# Binance-API-Feature-Extractor
**Session 5 Coursework: Creating Your Own Feature Extractor - Machine Learning For Artists &amp; Musicians**

Download Binance API Feature Extractor: https://github.com/cameronsocialhardware/Binance-API-Feature-Extractor/blob/main/Solana-Tracker.py

I coded a feature extractor in Python 3.5 to access data from the Binance API to send to Wekinator. Using the Python Requests library, a JSON file is loaded from Binance API and the Solana 24 hour price change percentage is extracted from that file and converted from a string into a floating-point number. 

This floating-point number is then sent as an input to Wekinator through the default port 6448 and default OSC message /wek/inputs using the Python OSC library. The JSON data request is looped using a while loop and the process is delayed every 30 seconds to prevent Binance from blocking the requests from overuse using time.sleep(30). 

The purpose of this feature extractor is to send the Solana price change data to Wekinator so I can experiment with visualizing the data in creative and intuitive ways. As part of this, I created an output visualizer in Processing that changes color depending on the output class received.

I created synthetic data to train wekinator to classify a -3% to -5% drop in the Solana 24 hour price change percentage as red (falling), a -1% to +1% as blue (price stable), and 3% to 5% as green (increasing). Additionally, -1% to -3% was set as a mix of red and blue, and 1% to 3% was set as a mix of green and blue.  

![Generative Art](https://github.com/cameronsocialhardware/Binance-API-Feature-Extractor/blob/main/Processing-Data-Art.gif)





