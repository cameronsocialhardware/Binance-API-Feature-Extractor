from pythonosc.udp_client import SimpleUDPClient
import time

# Access Binance API & Load 24hr price change percentage Solana JSON data
import requests

# Loop JSON data request
while (True):
    response = requests.get("https://api3.binance.com/api/v3/ticker/24hr?symbol=SOLGBP")   
  
    # Print connection status
    print(response)
  
    # Access priceChangePercent 
    solana = response.json()
    z = solana["priceChangePercent"]
    x = float(solana["priceChangePercent"])
   
    # Local Host
    ip = "127.0.0.1"

    # Wekinator Port
    port = 6448 

    # Create client
    client = SimpleUDPClient(ip, port)  

    # OSC messages
    client.send_message("/wek/inputs", (x))
    print(x)

    # Repeat every n seconds
    time.sleep(30) 
