FROM mcr.microsoft.com/dotnet/runtime:10.0

COPY unpacked /opt/ss14
RUN chmod +x /opt/ss14/Robust.Server

ENTRYPOINT ["/opt/ss14/Robust.Server"]
