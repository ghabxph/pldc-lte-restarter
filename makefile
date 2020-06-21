start: decrypt perms run

encrypt:
	@echo ---- encrypting sensitive stuff ----
	gpg --armor --encrypt --recipient 37ABFA52CA0D1365144092B5438BA9F9A56E52E6 restarter.sh

decrypt:
	@echo ---- decrypting sensitive stuff ----
	gpg --decrypt restarter.sh.asc > restarter.sh

perms:
	@echo ---- setting proper file permission ----
	chmod 755 restarter.sh

run:
	@echo ---- running the restarter ----
	./restarter.sh

install: decrypt perms
	sudo cp restarter.sh /usr/local/bin/pldc-lte-restart
