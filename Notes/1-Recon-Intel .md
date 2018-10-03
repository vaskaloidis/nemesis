# 1) Reconisance + Intelligence 


## Target Intelligence Gathering

- linkScrape - Searches LinkedIn for Company or University Employees
- ScrapedIn - LinkedIn Search
- Spiderfoot - OSINT Suite for Target Info
- Maltego - Gather information and users of a company
- SimplyEmail - OSINT for List of Emails - https://simplysecurity.github.io/SimplyEmail/
- Skiptracer - OSINT scraping framework

```bash
python linkScrape.py -c'Example Company' -r1 # Get Company ID
python linkScrape.py -c 100 -r1 # Search with company ID (or University ID)

python skiptracer.py -l (phone|email|sn|name|plate)

python3 ct-exposer.py -d teslamotors.com
```

Spiderfoot Install -  https://null-byte.wonderhowto.com/how-to/use-spiderfoot-for-osint-gathering-0180063/

## Target Vulnerability Scanning

- `ct-exposer` Subdomain Scanner - `python3 ct-exposer.py -d teslamotors.com`
- 

### Metasploit Scanners

HTTP Port Scanner

```bash
use auxiliary/scanner/http/brute_dirs
show options # Options
set RHOST 192.168.223.128
exploit
```

WMAP - Metasploit Web App Security Scanner

Start web-server, and target database

```bash
service postgresql start
msfdb init
msfdb sta
```

Select a target site

```bash
load wmap
wmap_sites -a http://192.168.223.128 # Adds target site
wmap_sites -l # List targets available now

wmap_targets -h
wmap_targets -d o # Loads target
wmap_run -t # list modules that will be used to scan
wmap_run -e # Executes
wmap_vulns -l # List vulnerabilities

```


## Social-Engineering Attack

Spear-Fishing

1. Maltego scan to get Email Targets List from Domain
2. Spiderfoot Scan to get OSINT
3. Choose a domain using: letter omission, a subdomain, vowel-swap. Use: `dnstwist`
4. Run list through SimplyEmail for OSINT on emails, and to check vulnerable users already comprimised
