@echo off

git add *
git commit -m "auto-commit for dev-test (sorry if broke)"
git push

cls

ssh matt@mattcompton.me "rm -rfv VenturyBoi"
ssh matt@mattcompton.me "git clone https://github.com/kketg/VenturyBoi"
ssh matt@mattcompton.me "kill $( lsof -i:9090 -t )"

cls

ssh matt@mattcompton.me "cd VenturyBoi && python3 app.py"
pause
