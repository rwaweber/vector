package metadata

installation: operating_systems: "amazon-linux": {
	title:       "Amazon Linux"
	description: """
		The [Amazon Linux AMI](\(urls.amazon_linux)) is a supported and
		maintained Linux image provided by Amazon Web Services for use on
		Amazon Elastic Compute Cloud (Amazon EC2). It is designed to
		provide a stable, secure, and high performance execution
		environment for applications running on Amazon EC2.
		"""

	interfaces: [
		installation.interfaces.yum,
		installation.interfaces.rpm,
		installation.interfaces.vector_installer & {
			role_implementations: agent: role_implementations._journald_agent
		},
		installation.interfaces.docker_cli,
	]

	family:                    "Linux"
	minimum_supported_version: "1"
	shell:                     "bash"
}
