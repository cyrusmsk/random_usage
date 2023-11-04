# random_usage
Usage of random distributions in several languages

## Language commands

Prepare data files:
### D
```bash
ldc2 dtest.d
./dtest 5
```

### R
```bash
Rscript rtest.R 5
```

### Python
```bash
python3 pytest.py 5
```

The command will create {d,r,py}data.csv. To create the graphics run:
```bash
Rscript plot.R {d,r,py}data
```
