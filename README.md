# t2fand
A simple daemon to control fan speed on Macs with T2 chip

# Configuration
Initial configuration will be done automatically.

For manual config, there's four options for each fan.
|        Key        |                            Value                            |
|:-----------------:|:-----------------------------------------------------------:|
|      low_temp     |        Temperature that will trigger higher fan speed       |
|     high_temp     |         Temperature that will trigger max fan speed         |
|    speed_curve    |   Three options present. Will be explained in table below.  |
| always_full_speed | if set "true", the fan will be at max speed no matter what. |

For `speed_curve`, there's three options.
|     Key     |                   Value                   |
|:-----------:|:-----------------------------------------:|
|    linear   |     Fan speed will be scaled linearly.    |
| exponential |  Fan speed will be scaled exponentially.  |
| logarithmic | Fan speed will be scaled logarithmically. |

Here's an image to better explain this. (Red: linear, blue: exponential, green: logarithmic)
![Image of fan curve graphs](/Fan Curve.png)
