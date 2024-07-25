if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/nandhu663/PROFESSOR.git /PROFESSORBOT
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /PROFESSORBOT
fi
cd /PROFESSORBOT
pip3 install -U -r requirements.txt
echo "Starting PROFESSOR-BOT...."
python3 bot.py
