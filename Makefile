super-duper-octo-barnacle.jar: deps.edn src/**/*
	clojure -Sdeps '{:deps {pack/pack.alpha {:git/url "https://github.com/juxt/pack.alpha.git" :sha "8acf80dd4d6e5173585f5c6fec7af28a310f3ed7"}}}' -m mach.pack.alpha.skinny --no-libs --project-path "$@"

pom.xml: deps.edn
	clojure -Spom

super-duper-octo-barnacle-pom.jar: deps.edn src/**/* extra/META-INF/pom.xml
	clojure -Sdeps '{:deps {pack/pack.alpha {:git/url "https://github.com/juxt/pack.alpha.git" :sha "8acf80dd4d6e5173585f5c6fec7af28a310f3ed7"}}}' -m mach.pack.alpha.skinny --no-libs -e "extra" --project-path "$@"

extra/META-INF/:
	mkdir -p "$@"

extra/META-INF/pom.xml: pom.xml extra/META-INF/
	cp pom.xml "$@"
