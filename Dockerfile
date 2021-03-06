FROM ansibleplaybookbundle/apb-base

LABEL "com.redhat.apb.spec"=\
"dmVyc2lvbjogMS4wCm5hbWU6IG1kYy1zZXJ2ZXItYXBiCmRlc2NyaXB0aW9uOiBBZXJvR2VhciBt\
ZGMtc2VydmVyIFNlcnZlciAKYmluZGFibGU6IFRydWUKYXN5bmM6IG9wdGlvbmFsCnRhZ3M6CiAg\
LSBtb2JpbGUtc2VydmljZQptZXRhZGF0YToKICBkaXNwbGF5TmFtZTogTW9iaWxlIERldmVsb3Bl\
ciBDb25zb2xlIAogIGxvbmdEZXNjcmlwdGlvbjogIkFuIEFQQiBkZXBsb3lpbmcgdGhlIEFlcm9H\
ZWFyIG1kYy1zZXJ2ZXIgU2VydmVyIHdpdGggcGVyc2lzdGVudCBzdG9yYWdlIGFuZCBhdXRoZW50\
aWNhdGlvbiB0aHJvdWdoIE9wZW5zaGlmdCIKICBpbWFnZVVybDogImh0dHBzOi8vcGJzLnR3aW1n\
LmNvbS9wcm9maWxlX2ltYWdlcy8xNzk0NDQwMDA1L2Flcm9nZWFyX2ljb24tMV80MDB4NDAwLnBu\
ZyIKICBkb2N1bWVudGF0aW9uVXJsOiAiaHR0cHM6Ly9kb2NzLmFlcm9nZWFyLm9yZy9leHRlcm5h\
bC9hcGIvbWRjLXNlcnZlci5odG1sIgogIHByb3ZpZGVyRGlzcGxheU5hbWU6ICJSZWQgSGF0LCBJ\
bmMuIgogIGRlcGVuZGVuY2llczogCiAgICAgIC0gImRvY2tlci5pby9vcGVuc2hpZnQvb2F1dGgt\
cHJveHk6djEuMS4wIgogICAgICAtICJkb2NrZXIuaW8vYWVyb2dlYXIvbW9iaWxlLWRldmVsb3Bl\
ci1jb25zb2xlOmxhdGVzdCIKICBzZXJ2aWNlTmFtZTogbWRjLXNlcnZlcgogIGJpbmRpbmdzTGlt\
aXQ6IDIKcGxhbnM6CiAgLSBuYW1lOiBkZWZhdWx0CiAgICBkZXNjcmlwdGlvbjogUGVyc2lzdGVu\
dCBkZXBsb3ltZW50IG9mIG1kYy1zZXJ2ZXIKICAgIGZyZWU6IFRydWUKICAgIHBhcmFtZXRlcnM6\
IFtdCiAgICBtZXRhZGF0YToge30K"


COPY playbooks /opt/apb/actions
COPY roles /opt/ansible/roles
COPY vars /opt/ansible/vars
RUN chmod -R g=u /opt/{ansible,apb}
USER apb