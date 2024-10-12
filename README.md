# terra-10-07-2024
# issues with credentials in the code:
1- git filter-branch --force --index-filter \
"git rm --cached --ignore-unmatch  aws-terraform/base-code/eks-mix/README.md" \
--prune-empty --tag-name-filter cat -- --all

2- git push origin --force --all

