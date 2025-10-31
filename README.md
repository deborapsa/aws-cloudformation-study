# ☁️ AWS CloudFormation — Guia Prático e Comparativo com Terraform

**Infraestrutura como Código (IaC) na AWS com Consistência, Governança e Automação.**

## 📘 Visão Geral

O **AWS CloudFormation** é o serviço de Infrastructure as Code (IaC) nativo da Amazon Web Services que permite modelar, provisionar e gerenciar recursos de nuvem de maneira automatizada e segura. Através de templates declarativos (YAML ou JSON), é possível criar e manter infraestruturas completas — desde um simples bucket S3 até arquiteturas corporativas complexas.

Este repositório serve como um **guia prático e técnico** para profissionais que buscam entender os fundamentos do CloudFormation, explorar seus benefícios e realizar um **comparativo detalhado com o Terraform**, um dos líderes de mercado em IaC Multi-Cloud.

---

## 🧩 Principais Benefícios do AWS CloudFormation

| Recurso | Descrição |
| :--- | :--- |
| **Automação e Padronização** | Provisionamento consistente e replicável de ambientes AWS. |
| **Gerenciamento de Estado** | O estado da infraestrutura é controlado pela própria AWS, eliminando arquivos de estado locais/remotos. |
| **Rollback Automático** | Em caso de falhas durante o deploy ou update, o CloudFormation reverte automaticamente as alterações. |
| **Auditoria e Compliance** | Integração nativa com CloudTrail e IAM para rastreabilidade e segurança. |
| **Escalabilidade Corporativa** | Suporte a **StackSets** para deploy em múltiplas contas e regiões AWS simultaneamente. |
| **Custo Zero Adicional** | Você paga apenas pelos recursos AWS criados; o serviço CloudFormation não tem custo. |

---

## 📄 Formatos de Template Suportados

| Formato | Descrição | Indicado para |
| :--- | :--- | :--- |
| **YAML** | Formato mais legível e moderno, com suporte a *intrinsic functions* (`!Ref`, `!Sub`, `!GetAtt`). | Equipes que valorizam clareza, colaboração e templates concisos. |
| **JSON** | Estrutura compatível e legada, porém menos amigável para humanos. | Ambientes que já possuem automações mais antigas. |
| **AWS SAM** | Extensão do CloudFormation focada em **aplicações serverless**. | Projetos com Lambda, API Gateway e DynamoDB. |

---

## 🚀 Exemplo Prático — Criação de Bucket S3

Este exemplo demonstra a criação de um recurso simples e o fluxo de deploy via AWS CLI.

**Arquivo:** `TEMPLATE-examples/s3-bucket.yaml`

```yaml
AWSTemplateFormatVersion: '2010-09-09'
Description: Exemplo simples - Criação de um bucket S3 com versionamento habilitado.
Resources:
  MyBucket:
    Type: AWS::S3::Bucket
    Properties:
      BucketName: !Sub '${AWS::AccountId}-cf-sample-bucket'
      VersioningConfiguration:
        Status: Enabled






