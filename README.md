# Binance-API-Feature-Extractor
**Session 5 Coursework: Creating Your Own Feature Extractor - Machine Learning For Artists &amp; Musicians**

I coded a feature extractor in Python 3.5 to access the Binance API to send a continous steam of data to Wekinator. Using the Python Requests library, a JSON file is loaded from the Binance API and the Solana 24 hour price change percentage data is extracted from that file and converted from a string into a floating-point number. 

The floating-point number is then sent as an input to Wekinator through the default port 6448 and default OSC message /wek/inputs using the Python OSC library. The JSON data request is then looped using a while loop and the process is delayed every 30 seconds using time.sleep(30) to prevent Binance from blocking the requests due to overuse of the API.

The purpose of this feature extractor is to send the Solana price change data to Wekinator so I can experiment with visualising the data in creative and intuitive ways. As part of this, I created an output visualiser in Processing that changes color depending on the output class received.

![Generative Art](https://github.com/cameronsocialhardware/Binance-API-Feature-Extractor/blob/main/Processing-Data-Art.gif)

I then coded a "Training Data Generator" in Python to create the data neccessary to train Wekinator to classify the various 24 hour price change percentage fluctuationsas seen below.

- Class 1 (-3% to -5%) = Red (Falling)
- Class 2 (-3% to -1%) = Red/Blue
- Class 3 (-1% to 1%) = Blue (Stable)
- Class 4 (1% to 3%) = Green/Blue
- Class 5 (3% to 5%) = Green (Rising)

To run the Python Binance API Feature Extractor in Windows Studio Code you will need the [Python Requests](https://docs.python-requests.org/en/latest/) and [Python OSC](https://pypi.org/project/python-osc/) libraries installed. I've added a lot of comments to me code so you shouldn't have any trouble understanding or modifying it to suit your own needs. 

If you're going to use this Feature Extractor with my Data Visualiser then set the number of inputs in Wekinator to 1, the number of outputs to 1, and the number of classes to 5. The default ports are used for both the Extractor and Visualiser.

You can download the files you need below:

- [Download Python Binance API Feature Extractor](https://github.com/cameronsocialhardware/Binance-API-Feature-Extractor/blob/main/Solana-Tracker.py)

- [Download Python Training Data Generator](https://github.com/cameronsocialhardware/Binance-API-Feature-Extractor/blob/main/Training-Data.py)

- [Download Processing Data Visualiser](https://github.com/cameronsocialhardware/Binance-API-Feature-Extractor/blob/main/Classifer-1-Input-Data-Visualisation.pde)



