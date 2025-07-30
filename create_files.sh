AGNU nano 7.2                     create_files.sh *                            #!/bin/bash
#!/bin/bash

your_name="Ilakiya"

max_number=$(ls ${your_name}[0-9]* 2>/dev/null | grep -oP "${your_name}\K[0-9]+" | sort -n | tail -1)


if [ -z "$max_number" ]; then
  max_number=0
fi


# Create 25 new files
for ((i=1; i<=25; i++)); do
  file_number=$((max_number + i))
  touch "${your_name}${file_number}"
done

ls -l ${your_name}*

