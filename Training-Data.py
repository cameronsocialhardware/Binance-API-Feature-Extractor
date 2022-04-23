from pythonosc.udp_client import SimpleUDPClient
import decimal
from decimal import Decimal

# Class 1: -3 -5

""" x = Decimal('-3.00')
z = Decimal('0.01')
y = float(x)

# Minus 0.01 until -5.00
while x > Decimal('-5.00'):
    x -= z
    print(x)

    # Local Host
    ip = "127.0.0.1"

    # Wekinator Port
    port = 6448 

    # Create client
    client = SimpleUDPClient(ip, port)  

    # OSC messages
    client.send_message("/wek/inputs", (y)) """


# Class 2: -1 -3

""" x = Decimal('-1.00')
z = Decimal('0.01')
y = float(x)

# Minus 0.01 until -3.00
while x > Decimal('-3.00'):
    x -= z
    print(x)

    # Local Host
    ip = "127.0.0.1"

    # Wekinator Port
    port = 6448 

    # Create client
    client = SimpleUDPClient(ip, port)  

    # OSC messages
    client.send_message("/wek/inputs", (y))  """


# Class 3: -1 0 +1

""" x = Decimal('-1.00')
z = Decimal('0.01')
y = float(x)

# Add 0.01 until 1.00
while x < Decimal('1.00'):
    x += z
    print(x)

    # Local Host
    ip = "127.0.0.1"

    # Wekinator Port
    port = 6448 

    # Create client
    client = SimpleUDPClient(ip, port)  

    # OSC messages
    client.send_message("/wek/inputs", (y)) """

# Class 4: +1 +3

""" x = Decimal('1.00')
z = Decimal('0.01')
y = float(x)

# Add 0.01 until 3.00
while x < Decimal('3.00'):
    x += z
    print(x)

    # Local Host
    ip = "127.0.0.1"

    # Wekinator Port
    port = 6448 

    # Create client
    client = SimpleUDPClient(ip, port)  

    # OSC messages
    client.send_message("/wek/inputs", (y))  """

# Class 5: +3 +5

x = Decimal('3.00')
z = Decimal('0.01')
y = float(x)

# Add 0.01 until 5.00
while x < Decimal('5.00'):
    x += z
    print(x)

    # Local Host
    ip = "127.0.0.1"

    # Wekinator Port
    port = 6448 

    # Create client
    client = SimpleUDPClient(ip, port)  

    # OSC messages
    client.send_message("/wek/inputs", (y)) 