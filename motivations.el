;;; motivations.el --- A collection of motivating messages

;; Author: DEADBLACKCLOVER <deadblackclover@protonmail.com>
;; Version: 0.1
;; URL: https://github.com/deadblackclover/motivations-el
;; Package-Requires: ((emacs "25.1"))

;; Copyright (c) 2020, DEADBLACKCLOVER. This file is
;; licensed under the GNU General Public License version 3 or later. See
;; the LICENSE file.

;;; Commentary:

;; A collection of motivating messages

;;; Code:
(defgroup motivations nil
  "A collection of motivating messages"
  :group 'motivations)

(defvar motivations-list
  (list "don't worry. no one actually knows what they're doing."
	"this is Hard Stuff, but you can do it!"
	"getting started is hard, you did it, congratulations!"
	"If you can see this message it means you got it working and that's something to celebrate!"
	"you are the best around." "nothing is ever going to keep you down!"
	"computers are super hard, but you can defeat them!"
	"it's okay to need a break, everyone needs one!" "you got this."
	"whoah you're pretty good at this."
	"all the cats in the land bow down to your cool computer skills."
	"there's a brazillion different ways to solve every problem - you only need one."
	"oh, cool! check out what you just learned there!"
	"learning something is the first step towards being awesome at it."
	"don't be afraid to ask questions!" "rad beans! lets try another!" "impressive..."
	"this is amazing! keep with the good work"
	"you've already defeated so many obstacles to get here—keep going! you can do it."
	"even the most accomplished computer people in the universe all make it up as they go along! this is okay."
	"is your code a parking ticket? because it looks _fine_."
	"rust is cool, and so are you."
	"wowowowowow you've got some kick-ass rust skillz."
	"I can't believe what I'm seeing, you're awesome."
	"I'm pretty sure you're now fully qualified fantastic human."
	"looks like you're pretty much awesome now."
	"omg - I'm falling head over heels for your sweet skills."
	"look how far you've come! you're awesome!!"
	"the best way to learn is by doing, and you are doing it good!"
	"¡Lo estás haciendo muy bien!" "keep going! you can do it!"
	"mistakes are how we learn. keep making them! you're doing awesome!"
	"'No bird soars in a calm' - Wilbur Wright" "Ayyyyyyy! so much WoW! very aWesome!!!"
	"you finished a hard problem and learned something new. doesn't it feel great?"
	"Never leave house without your towel."
	"If 42 doesn't answer your question, try a prime number." "i'm pretty new to this."
	"You've got 99 problems but rust ain't one" "Hakuna Matata!"
	"Reboot your life, everyday"
	"'May the force be with you, Node'-JavaScript"
	"Alright!! Way to go!!"
	"The expert at anything, was once a beginner."
	"les petit ruisseaux font les grandes rivieres"  "It's never too late!"
	"Who's awesome? YOU'RE AWESOME!!!"
	"did you ever know that you're my hero? you're everything i would like to be."
	"charge forward!"
	"one more step. you're almost there!"
	"what lovely code you have!"
	"Meow, you're paw-some"
	"You totally did the thing!"
	"Donne tout ce que tu as et dis toi que ce n'est qu'un mauvais moment à passer ! Bon courage !"
	"Get to da choppah! Nao!"
	"your code looks purrr-fect!"
	"You're the best! You can do anything!"
	"Alright , let's go"
	"Don't hate, caffeinate"
	"Keep Pushing!"
	"It's okay to be a little RUSTy today; look how far you'vve come!"
	"If C is like playing with knives & C++ is like juggling chainsaws, Rust is like parkour while suspended on strings. You'll look ridiculous at times, but can do all sorts of crazy moves scary to impossible without it."
	"Be the person you'd like to meet one day"
	"RailsClub 2016 was rusted <3"
	"You're good. Keep going and you will discover what apostrophes do in Rust"
	"Of Course We Sill Love You")
  "List of motivational messages.")

(defun motivations-get-random-element (list)
  "Return a random element of LIST."
  (if (not (and (list)
		(listp list)))
      (nth (random (1- (1+ (length list)))) list)
    (error
     "Argument to get-random-element not a list or the list is empty")))

(defun motivation ()
  "Show random motivational message."
  (interactive)
  (message (motivations-get-random-element motivations-list)))

(global-set-key (kbd "C-x C-m") 'motivation)

(provide 'motivations)
;;; motivations.el ends here
