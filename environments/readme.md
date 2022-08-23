# Strategies to Create Multiple Environments using Terraform

- Separated Directories

    Pros:

        Environments are separated and identifiable.
        More granularity: you can customize environment layers.
        Less chance of applying a configuration in a wrong environment.
        Environments are self-descriptive and easy to understand, no need for documentation.

    Cons:

        Need to duplicate a piece of file structure to create a new environment.
        Several directory levels in the project.

- Workspaces

    Pros:

        Scalability with repeatable environments.
        Simplicity.

    Cons:

        More possibility to make errors by selecting a wrong workspace.
        The customization of an environment layer is less obvious.

Take away:

    Separated Directories is the best option to create multiple environments.
    Workspaces can be used as an extra option on development.
