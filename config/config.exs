use Mix.Config

config :logger, level: :info

config :bonny,
  # Add each CRD Controller module for this operator to load here
  controllers: [
    HelloOperator.Controller.V1.Greeting
  ],

  # Set the Kubernetes API group for this operator.
  # This can be overwritten using the @group attribute of a controller
  group: "hello-operator.bonny.test",

  # kubeconf_file: "./kubeconfig.yaml",

  # Name must only consist of only lowercase letters and hyphens.
  # Defaults to "bonny"
  operator_name: "hello-operator",

  labels: %{
    "test-app" => "hello-operator"
  }
