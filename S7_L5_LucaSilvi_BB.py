import numpy as np 
import pandas as pd 
import matplotlib.pyplot as plt 
import seaborn as sns


df = pd.read_csv('dataset_climatico.csv')

# Rimozione di valori mancanti
df.dropna(inplace=True) 
#Standardizzazione Data
df["data_osservazione"] = pd.to_datetime(df["data_osservazione"])

#Normalizzazione ZScore
df["temperatura_media"] = (df["temperatura_media"] - df["temperatura_media"].mean()) / (df["temperatura_media"].std())
df["precipitazioni"] = (df["precipitazioni"] - df["precipitazioni"].mean()) / (df["precipitazioni"].std())
df["umidita"] = (df["umidita"] - df["umidita"].mean()) / (df["umidita"].std())
df["velocita_vento"] = (df["velocita_vento"] - df["velocita_vento"].mean()) / (df["velocita_vento"].std())

#Analisi statistiche

descrizione = df.describe()
print(descrizione)

#Visualizzazione distribuzione delle variabili normalizzate


#Visualizzazione della Distribuzione per Variazione di Temperatura intorno alla media lungo il periodo
plt.figure(figsize=(10, 4))
# Istogramma
plt.subplot(2, 1, 1)
sns.histplot(df['temperatura_media'], bins=30, kde=True, color = 'darkorange', alpha = 0.9)
plt.title('Istogramma di ' + 'temperatura_media')
# Box plot
plt.subplot(2, 1, 2)
sns.boxplot(x=df['temperatura_media'])
plt.title('Box plot di ' + 'temperatura_media')
plt.tight_layout()
plt.show()


#Visualizzazione della Distribuzione per Variazione di Quantità di Precipitazioni intorno alla media lungo il periodo
plt.figure(figsize=(10, 4))
# Istogramma
plt.subplot(2, 1, 1)
sns.histplot(df['precipitazioni'], bins=30, kde=True, color = 'skyblue', alpha = 0.9)
plt.title('Istogramma di ' + 'precipitazioni')
# Box plot
plt.subplot(2, 1, 2)
sns.boxplot(x=df['precipitazioni'])
plt.title('Box plot di ' + 'precipitazioni')
plt.tight_layout()
plt.show()


#Visualizzazione della Distribuzione per Variazione di Umidità intorno alla media lungo il periodo
plt.figure(figsize=(10, 4))
# Istogramma
plt.subplot(2, 1, 1)
sns.histplot(df['umidita'], bins=30, kde=True, color = 'b', alpha = 0.9)
plt.title('Istogramma di ' + 'umidita')
# Box plot
plt.subplot(2, 1, 2)
sns.boxplot(x=df['umidita'])
plt.title('Box plot di ' + 'umidita')
plt.tight_layout()
plt.show()



#Visualizzazione della Distribuzione per Variazione di Velocità di Vento intorno alla media lungo il periodo
plt.figure(figsize=(10, 4))
# Istogramma
plt.subplot(2, 1, 1)
sns.histplot(df['velocita_vento'], bins=30, kde=True, color = 'g', alpha = 0.9)
plt.title('Istogramma di ' + 'velocita_vento')
# Box plot
plt.subplot(2, 1, 2)
sns.boxplot(x=df['velocita_vento'], color = 'skyblue')
plt.title('Box plot di ' + 'velocita_vento')
plt.tight_layout()
plt.show()


#Analisi di Correlazione:
#Utilizzare una heatmap per visualizzare la correlazione tra le diverse variabili meteorologiche.
#Identificare eventuali correlazioni significative (es. tra temperatura e umidità).

corr = df[["temperatura_media", "precipitazioni", "umidita", "velocita_vento"]].corr()
sns.heatmap(corr, cmap="Blues", annot=True)
plt.tight_layout()
plt.show()
