## Setting up
* Install [SNMP Simulator tool](http://snmpsim.sourceforge.net/). This tool is installed via Python installation tool [Pip](https://pypi.python.org/pypi/pip)
```
pip install snmpsim
```
* Install net snmp tool suites
** Mac OS X
```
brew install net-snmp
```
** Ubuntu/Debian OSs


## How to run
* Using snmpsimd to run an agent
```
psimd.py --agent-udpv4-endpoint=127.0.0.1:1161
```
For the above command, agent starts at ip 127.0.0.1 and port 1161.

* Run snmpwalk to gather information from agent
```
snmpwalk -On -v2c -c recorded/linksys-system localhost:1161 1.3.6
```