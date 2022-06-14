##When running get-psrepository you may get an error saying unable to download. This is a security related issue. Issue the following command below to resolve this

[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12