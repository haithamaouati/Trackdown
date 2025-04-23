# Trackdown
Trackdown an IP address geolocation — fast, accurate, and reliable.

```
  _____                         _          _                            
 |_   _|  _ __    __ _    ___  | | __   __| |   ___   __      __  _ __  
   | |   | '__|  / _` |  / __| | |/ /  / _` |  / _ \  \ \ /\ / / | '_ \ 
   | |   | |    | (_| | | (__  |   <  | (_| | | (_) |  \ V  V /  | | | |
   |_|   |_|     \__,_|  \___| |_|\_\  \__,_|  \___/    \_/\_/   |_| |_|
```

## Install

To use the Trackdown script, follow these steps:

1. Clone the repository:

    ```
    git clone https://github.com/haithamaouati/Trackdown.git
    ```

2. Change to the Trackdown directory:

    ```
    cd Trackdown
    ```
    
3. Change the file modes
    ```
    chmod +x trackdown.sh
    ```
    
5. Run the script:

    ```
    ./trackdown.sh
    ```
## Usage

Usage: `./trackdown.sh -i <IP_ADDRESS>`

##### Options:

`-i`, `--ip`       IP address to geolocate

`-h`, `--help`     Show this help message

## Dependencies

The script requires the following dependencies:

- [figlet](): `pkg install figlet -y`
- [curl](https://curl.se/): `pkg install curl - y`
- [jq](https://stedolan.github.io/jq/): `pkg install jq -y`

Make sure to install these dependencies before running the script.

## Author

Made with :coffee: by **Haitham Aouati**
  - GitHub: [github.com/haithamaouati](https://github.com/haithamaouati)

## License

Trackdown is licensed under [Unlicense license](LICENSE).
