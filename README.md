# Binance-API-Feature-Extractor
**Session 5 Coursework: Creating Your Own Feature Extractor - Machine Learning For Artists &amp; Musicians**

I coded a feature extractor in Python 3.5 to access data from the Binance API to send to Wekinator. Using the Python Requests library, a JSON file is loaded from Binance API and the Solana 24 hour price change percentage is extracted from that file and converted from a string into a floating-point number. 

This floating-point number is then sent as an input to Wekinator through the default port 6448 and default OSC message /wek/inputs using the Python OSC library. The JSON data request is looped using a while loop and the process is delayed every 30 seconds to prevent Binance from blocking the requests from overuse using time.sleep(30). 

The purpose of this feature extractor is to send the Solana price change data to Wekinator so I can experiment with visualising the data in creative and intuitive ways. As part of this, I created an output visualiser in Processing that changes color depending on the output class received.

I coded a "Training Data Generator" in Python to create the data neccessary to train Wekinator to classify a -3% to -5% drop in the Solana 24 hour price change percentage to display a red colouration (falling), a -1% to +1% as blue (price stable), and 3% to 5% as green (increasing). 
Additionally, -1% to -3% was set as a mix of red and blue, and 1% to 3% was set as a mix of green and blue. 

**How To Use**

Run the Python Binance API Feature Extractor in Windows Studio Code. Python Requests library.
You will need the Python Requests library and Python OSC library installed.

[Download Python Binance API Feature Extractor](https://github.com/cameronsocialhardware/Binance-API-Feature-Extractor/blob/main/Solana-Tracker.py)

[Download Python Training Data Generator](https://github.com/cameronsocialhardware/Binance-API-Feature-Extractor/blob/main/Training-Data.py)

[Download Processing Data Visualiser](https://github.com/cameronsocialhardware/Binance-API-Feature-Extractor/blob/main/Classifer-1-Input-Data-Visualisation.pde)

![Generative Art](https://github.com/cameronsocialhardware/Binance-API-Feature-Extractor/blob/main/Processing-Data-Art.gif)





