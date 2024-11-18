var builder = DistributedApplication.CreateBuilder(args);

var apiService = builder.AddProject<Projects.ShieldAccess_ApiService>("apiservice");

builder.AddProject<Projects.ShieldAccess_Web>("webfrontend")
    .WithExternalHttpEndpoints()
    .WithReference(apiService);

builder.Build().Run();
