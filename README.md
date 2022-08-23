# Terraform

This is an example, following Terraform best practices on creating a [Standard Module Structure](https://www.terraform.io/language/modules/develop/structure).

Find more info at [Separate Configurations for Environments](https://www.hashicorp.com/blog/structuring-hashicorp-terraform-configuration-for-production)

```markdown
tree
.
├── environments
│   ├── development
│   │   ├── main.tf
│   │   └── versions.tf
│   ├── readme.md
│   └── sandbox
│       ├── main.tf
│       └── versions.tf
├── modules
│   ├── _examples
│   │   └── oracle_server
│   │       ├── main.tf
│   │       └── versions.tf
│   └── oracle_server
│       ├── main.tf
│       ├── outputs.tf
│       ├── readme.md
│       └── variables.tf
├── README.md
└── Taskfile.yaml

```

## Usage

```sh
    # Step 1: Clone the repository

    git clone https://github.com/J0hn-B/terraform-template.git && cd terraform-template

```

```sh
    # Step 2: Test an Azure Resource Group example (sign in to Azure ==> 'az login')

    cd modules/_examples/oracle_server/ && terraform init && terraform plan

```

```sh
    # Step 3: Test an Azure Resource Group on sandbox environment

    cd ../../../environments/sandbox/ && terraform init && terraform plan

```

```sh
    # Step 4: Test an Azure Resource Group on development environment

    cd ../development/ && terraform init && terraform plan

```

## Validate

```sh
    # Step 1: Install Task

    brew install go-task/tap/go-task

    # > Task is a task runner/build tool that aims to be simpler and easier to use than, for example, GNU Make.
```

```sh
    # For Windows:

    choco install go-task

```

  > [Task](https://taskfile.dev/#/), written in Go, works with any operating system.

```sh
    # Step 2: From project's root directory, run the following command:

    task lint

    # > Expect an error from terrascan linter. Output will provide violation details. ;)
```

```sh
    # Step 3: From project's root directory, run the following command:

    task tfsec
```

  > Tasks are executing docker commands. Docker Desktop is required to run the command.
