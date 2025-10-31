# Instruções de Deploy CloudFormation

1. Acesse a Console AWS → CloudFormation
2. Clique em Create Stack
3. Faça upload do template YAML
4. Acompanhe os eventos e confirme criação

Via CLI:
aws cloudformation create-stack --stack-name my-stack --template-body file://template.yaml
