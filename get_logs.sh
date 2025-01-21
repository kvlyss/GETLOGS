
USER=x


DATE=$(date +"%d-%m-%Y-%H-%M")


OUTPUT_FILE="number_connection-$DATE"


CONNECTIONS=$(grep "$USER" auth.log | grep -c "session opened")


echo "Nombre de connexions de $USER : $CONNECTIONS" > $OUTPUT_FILE


tar -cvf "$OUTPUT_FILE.tar" "$OUTPUT_FILE"


mkdir -p ~/Bureau/PROJET/job13/Backup
mv "$OUTPUT_FILE.tar" ~/Bureau/PROJET/job13/Backup/


rm "$OUTPUT_FILE"
