.PHONY: build clean

build:
	@-make clean
	-(docker-compose build && docker-compose run proposal)
	-(docker-compose build && docker-compose run final)
	mv proposal/project.pdf build/iTopTalk-proposal.pdf
	mv final/project.pdf build/iTopTalk-final.pdf
	cd proposal && make simpleClean
	cd final && make simpleClean

clean:
	rm -rf build/iTopTalk-proposal.pdf
	rm -rf build/iTopTalk-final.pdf
