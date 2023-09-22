while IFS= read -r file_path; do
  echo "Testing $file_path"
  echo "Running endorctl sbom import --sbom-file-path=\"$file_path\""
  endorctl sbom import --sbom-file-path="$file_path"
  # Add your testing commands here
done < spdx_files.txt
