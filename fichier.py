import tweepy
import pandas as pd
import os

# Ton Bearer Token pour l'API v2
bearer_token = "AAAAAAAAAAAAAAAAAAAAAF2zxgEAAAAA7nxtiKdSSP82GMw4GcNSsTXkuzg%3DEdZBTisZgaUrYPmDG4wzFHza2HRbS2msbzilDFHe2NJW8stw"

# Authentification avec Tweepy pour l'API v2
client = tweepy.Client(bearer_token=bearer_token)

# Fonction pour scraper les tweets récents
def fetch_tweets(keyword, count=10):
    tweets_data = []
    response = client.search_recent_tweets(query=keyword, max_results=count, tweet_fields=["created_at", "author_id", "text"])
    for tweet in response.data:
        tweets_data.append([tweet.created_at, tweet.author_id, tweet.text])
    return pd.DataFrame(tweets_data, columns=["Date", "Auteur", "Contenu"])

# Fonction pour sauvegarder les tweets dans un CSV
def save_tweets_to_csv(dataframe, filename):
    if os.path.exists(filename):
        # Charger les anciens tweets pour éviter les doublons
        old_data = pd.read_csv(filename)
        # Combiner les nouveaux tweets avec les anciens
        combined_data = pd.concat([old_data, dataframe]).drop_duplicates(subset=["Date", "Auteur", "Contenu"])
        combined_data.to_csv(filename, index=False)
    else:
        # Si le fichier n'existe pas, le créer
        dataframe.to_csv(filename, index=False)

# Tester avec un mot-clé
keyword = "Ukraine OR Russie OR sanctions"
tweets_df = fetch_tweets(keyword, count=10)

# Sauvegarder les tweets sans écraser le fichier existant
save_tweets_to_csv(tweets_df, "tweets_ukraine_russie.csv")

print("Fichier CSV mis à jour avec succès !")
