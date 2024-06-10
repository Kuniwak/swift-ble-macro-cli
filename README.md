ble
===

A CLI tool for Bluetooth Low Energy (BLE) Macros on macOS.

Supported macros are subset of [Android nRF Connect](https://github.com/NordicSemiconductor/Android-nRF-Connect/blob/54ed2a491567c18c9de91556efb511b9b0bc3ec8/documentation/Macros/README.md).
See more details in [swift-ble-macro](https://github.com/kuniwak/swift-ble-macro?tab=readme-ov-file#supported-macros)


Installation
------------

Download binaries from the [releases](https://github.com/Kuniwak/swift-ble-macro-cli/releases) page (Apple Silicon Mac only).
And install it to `/usr/local/bin` or any directory in your `$PATH`.


Usage
-----

```console
$ # Discover BLE devices
$ ble discover
00000000-0000-0000-0000-000000000000    Example Device 1    -78
11111111-1111-1111-1111-111111111111    Example Device 2    -47
22222222-2222-2222-2222-222222222222    Example Device 3    -54
...

$ # press Ctrl+C to stop scanning

$ # Run a BLE macro
$ ble run path/to/your/ble-macro.xml --uuid 00000000-0000-0000-0000-000000000000

$ # Run a BLE REPL
$ ble repl --uuid 00000000-0000-0000-0000-000000000000
connecting...
connected

(ble) ?
write-command, w, wc    Write to a characteristic without a response
write-descriptor, wd    Write to a descriptor
write-request, req      Write to a characteristic with a response
read, r Read from a characteristic
discovery-service, ds   Discover services
discovery-characteristics, dc   Discover characteristics
discovery-descriptor, dd        Discover descriptors
q, quit Quit the REPL

(ble) dc
180A 2A29 read
180A 2A24 read
D0611E78-BBB4-4591-A5F8-487910AE4366 8667556C-9A37-4C91-84ED-54EE27D90049 write/write/notify/extendedProperties
9FA480E0-4967-4542-9390-D343DC5D04AE AF0BADB1-5B99-43CD-917A-A77BC549E3CC write/write/notify/extendedProperties
180F 2A19 read/notify
1805 2A2B read/notify
1805 2A0F readk

(ble) r 180F 2A19
58
```


License
-------
[MIT License](./LICENSE)
