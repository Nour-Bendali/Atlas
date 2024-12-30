import React, { useEffect, useState } from 'react';
import { MapContainer, TileLayer, Marker, Popup } from 'react-leaflet';
import 'leaflet/dist/leaflet.css';
import axios from 'axios';

// Fix Leaflet marker icons (due to an issue in React setups)
import L from 'leaflet';
delete L.Icon.Default.prototype._getIconUrl;
L.Icon.Default.mergeOptions({
    iconRetinaUrl: 'https://unpkg.com/leaflet@1.9.3/dist/images/marker-icon-2x.png',
    iconUrl: 'https://unpkg.com/leaflet@1.9.3/dist/images/marker-icon.png',
    shadowUrl: 'https://unpkg.com/leaflet@1.9.3/dist/images/marker-shadow.png',
});

const Map = () => {
    const [countries, setCountries] = useState([]);

    // Fetch data from the backend
    useEffect(() => {
        axios.get('http://localhost:3001/api/countries')
            .then((response) => {
                setCountries(response.data);
            })
            .catch((error) => {
                console.error('Error fetching countries:', error);
            });
    }, []);

    return (
        <MapContainer center={[20, 0]} zoom={2} style={{ height: '100vh', width: '100%' }}>
            <TileLayer
                url="https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png"
                attribution='&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors'
            />
            {countries.map((country) => (
                <Marker key={country.country_id} position={[country.latitude, country.longitude]}>
                    <Popup>
                        <b>{country.country_name}</b><br />
                        Capital: {country.capital || 'N/A'}<br />
                        Region: {country.region || 'N/A'}
                    </Popup>
                </Marker>
            ))}
        </MapContainer>
    );
};

export default Map;
