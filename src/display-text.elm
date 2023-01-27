module Main exposing (main)

import Browser
import Html exposing (Html, div, text)
import Array
import Random.List exposing(shuffle)
import Random
import Browser


type alias Model =
    { rows : List String }

--main : Html msg
main =
  view initialModel 



initialModel : Model
initialModel =
    { rows =
    [ "a"
    , "anywhere"
    , "below"
    , "burn"
    , "climb"
    , "able"
    , "apartment"
    , "bend"
    , "bus"
    , "close"
    , "about"
    , "appear"
    , "beneath"
    , "business"
    , "clothes"
    , "above"
    , "approach"
    , "beside"
    , "busy"
    , "cloud"
    , "accept"
    , "area"
    , "best"
    , "but"
    , "coat"
    , "across"
    , "arm"
    , "better"
    , "buy"
    , "coffee"
    , "act"
    , "around"
    , "between"
    , "by"
    , "cold"
    , "actually"
    , "arrive"
    , "beyond"
    , "call"
    , "college"
    , "add"
    , "art"
    , "big"
    , "calm"
    , "color"
    , "admit"
    , "as"
    , "bird"
    , "camera"
    , "come"
    , "afraid"
    , "ask"
    , "bit"
    , "can"
    , "company"
    , "after"
    , "asleep"
    , "bite"
    , "car"
    , "completely"
    , "afternoon"
    , "at"
    , "black"
    , "card"
    , "computer"
    , "again"
    , "attack"
    , "block"
    , "care"
    , "confuse"
    , "against"
    , "attention"
    , "blood"
    , "careful"
    , "consider"
    , "age"
    , "aunt"
    , "blow"
    , "carefully"
    , "continue"
    , "ago"
    , "avoid"
    , "blue"
    , "carry"
    , "control"
    , "agree"
    , "away"
    , "board"
    , "case"
    , "conversation"
    , "ahead"
    , "baby"
    , "boat"
    , "cat"
    , "cool"
    , "air"
    , "back"
    , "body"
    , "catch"
    , "cop"
    , "alive"
    , "bad"
    , "bone"
    , "cause"
    , "corner"
    , "all"
    , "bag"
    , "book"
    , "ceiling"
    , "count"
    , "allow"
    , "ball"
    , "boot"
    , "center"
    , "counter"
    , "almost"
    , "bank"
    , "bore"
    , "certain"
    , "country"
    , "alone"
    , "bar"
    , "both"
    , "certainly"
    , "couple"
    , "along"
    , "barely"
    , "bother"
    , "chair"
    , "course"
    , "already"
    , "bathroom"
    , "bottle"
    , "chance"
    , "cover"
    , "also"
    , "be"
    , "bottom"
    , "change"
    , "crazy"
    , "although"
    , "beach"
    , "box"
    , "check"
    , "create"
    , "always"
    , "bear"
    , "boy"
    , "cheek"
    , "creature"
    , "among"
    , "beat"
    , "brain"
    , "chest"
    , "cross"
    , "and"
    , "beautiful"
    , "branch"
    , "child"
    , "crowd"
    , "angry"
    , "because"
    , "break"
    , "choice"
    , "cry"
    , "animal"
    , "become"
    , "breast"
    , "choose"
    , "cup"
    , "another"
    , "bed"
    , "breath"
    , "church"
    , "cut"
    , "answer"
    , "bedroom"
    , "breathe"
    , "cigarette"
    , "dad"
    , "any"
    , "beer"
    , "bridge"
    , "circle"
    , "dance"
    , "anybody"
    , "before"
    , "bright"
    , "city"
    , "dark"
    , "anymore"
    , "begin"
    , "bring"
    , "class"
    , "darkness"
    , "anyone"
    , "behind"
    , "brother"
    , "clean"
    , "daughter"
    , "anything"
    , "believe"
    , "brown"
    , "clear"
    , "day"
    , "anyway"
    , "belong"
    , "building"
    , "clearly"
    , "dead"
    , "death"
    , "except"
    , "funny"
    , "history"
    , "law"
    , "decide"
    , "excite"
    , "future"
    , "hit"
    , "lay"
    , "deep"
    , "expect"
    , "game"
    , "hold"
    , "lead"
    , "desk"
    , "explain"
    , "garden"
    , "hole"
    , "leaf"
    , "despite"
    , "expression"
    , "gate"
    , "home"
    , "lean"
    , "die"
    , "extra"
    , "gather"
    , "hope"
    , "learn"
    , "different"
    , "eye"
    , "gently"
    , "horse"
    , "leave"
    , "dinner"
    , "face"
    , "get"
    , "hospital"
    , "leg"
    , "direction"
    , "fact"
    , "gift"
    , "hot"
    , "less"
    , "dirt"
    , "fade"
    , "girl"
    , "hotel"
    , "let"
    , "disappear"
    , "fail"
    , "give"
    , "hour"
    , "letter"
    , "discover"
    , "fall"
    , "glance"
    , "house"
    , "lie"
    , "distance"
    , "familiar"
    , "glass"
    , "how"
    , "life"
    , "do"
    , "family"
    , "go"
    , "however"
    , "lift"
    , "doctor"
    , "far"
    , "god"
    , "huge"
    , "light"
    , "dog"
    , "fast"
    , "gold"
    , "human"
    , "like"
    , "door"
    , "father"
    , "good"
    , "hundred"
    , "line"
    , "doorway"
    , "fear"
    , "grab"
    , "hurry"
    , "lip"
    , "down"
    , "feed"
    , "grandfather"
    , "hurt"
    , "listen"
    , "dozen"
    , "feel"
    , "grandmother"
    , "husband"
    , "little"
    , "drag"
    , "few"
    , "grass"
    , "I"
    , "local"
    , "draw"
    , "field"
    , "gray"
    , "ice"
    , "lock"
    , "dream"
    , "fight"
    , "great"
    , "idea"
    , "long"
    , "dress"
    , "figure"
    , "green"
    , "if"
    , "look"
    , "drink"
    , "fill"
    , "ground"
    , "ignore"
    , "lose"
    , "drive"
    , "final"
    , "group"
    , "image"
    , "lot"
    , "driver"
    , "finally"
    , "grow"
    , "imagine"
    , "loud"
    , "drop"
    , "find"
    , "guard"
    , "immediately"
    , "love"
    , "dry"
    , "fine"
    , "guess"
    , "important"
    , "low"
    , "during"
    , "finger"
    , "gun"
    , "in"
    , "lucky"
    , "dust"
    , "finish"
    , "guy"
    , "information"
    , "lunch"
    , "each"
    , "fire"
    , "hair"
    , "inside"
    , "machine"
    , "ear"
    , "first"
    , "half"
    , "instead"
    , "main"
    , "early"
    , "fish"
    , "hall"
    , "interest"
    , "make"
    , "earth"
    , "fit"
    , "hallway"
    , "into"
    , "man"
    , "easily"
    , "five"
    , "hand"
    , "it"
    , "manage"
    , "east"
    , "fix"
    , "hang"
    , "itself"
    , "many"
    , "easy"
    , "flash"
    , "happen"
    , "jacket"
    , "map"
    , "eat"
    , "flat"
    , "happy"
    , "job"
    , "mark"
    , "edge"
    , "flight"
    , "hard"
    , "join"
    , "marriage"
    , "eff"
    , "ort"
    , "floor"
    , "hardly"
    , "joke"
    , "marry"
    , "egg"
    , "flower"
    , "hate"
    , "jump"
    , "matter"
    , "eight"
    , "fly"
    , "have"
    , "just"
    , "may"
    , "either"
    , "follow"
    , "he"
    , "keep"
    , "maybe"
    , "else"
    , "food"
    , "head"
    , "key"
    , "me"
    , "empty"
    , "foot"
    , "hear"
    , "kick"
    , "mean"
    , "end"
    , "for"
    , "heart"
    , "kid"
    , "meet"
    , "engine"
    , "force"
    , "heat"
    , "kill"
    , "member"
    , "enjoy"
    , "forehead"
    , "heavy"
    , "kind"
    , "memory"
    , "enough"
    , "forest"
    , "hell"
    , "kiss"
    , "mention"
    , "enter"
    , "forever"
    , "hello"
    , "kitchen"
    , "message"
    , "entire"
    , "forget"
    , "help"
    , "knee"
    , "metal"
    , "especially"
    , "form"
    , "her"
    , "knife"
    , "middle"
    , "even"
    , "forward"
    , "here"
    , "knock"
    , "might"
    , "event"
    , "four"
    , "herself"
    , "know"
    , "mind"
    , "ever"
    , "free"
    , "hey"
    , "lady"
    , "mine"
    , "every"
    , "fresh"
    , "hi"
    , "land"
    , "minute"
    , "everybody"
    , "friend"
    , "hide"
    , "language"
    , "mirror"
    , "everyone"
    , "from"
    , "high"
    , "large"
    , "miss"
    , "everything"
    , "front"
    , "hill"
    , "last"
    , "moment"
    , "everywhere"
    , "full"
    , "him"
    , "later"
    , "money"
    , "exactly"
    , "fun"
    , "himself"
    , "laugh"
    , "month"
    , "moon"
    , "our"
    , "quickly"
    , "send"
    , "smile"
    , "more"
    , "out"
    , "quiet"
    , "sense"
    , "smoke"
    , "morning"
    , "outside"
    , "quietly"
    , "serious"
    , "snap"
    , "most"
    , "over"
    , "quite"
    , "seriously"
    , "snow"
    , "mostly"
    , "own"
    , "radio"
    , "serve"
    , "so"
    , "mother"
    , "page"
    , "rain"
    , "service"
    , "soft"
    , "mountain"
    , "pain"
    , "raise"
    , "set"
    , "softly"
    , "mouth"
    , "paint"
    , "rather"
    , "settle"
    , "soldier"
    , "move"
    , "pair"
    , "reach"
    , "seven"
    , "somebody"
    , "movie"
    , "pale"
    , "read"
    , "several"
    , "somehow"
    , "much"
    , "palm"
    , "ready"
    , "sex"
    , "someone"
    , "music"
    , "pants"
    , "real"
    , "shadow"
    , "something"
    , "must"
    , "paper"
    , "realize"
    , "shake"
    , "sometimes"
    , "my"
    , "parent"
    , "really"
    , "shape"
    , "somewhere"
    , "myself"
    , "part"
    , "reason"
    , "share"
    , "son"
    , "name"
    , "party"
    , "receive"
    , "sharp"
    , "song"
    , "narrow"
    , "pass"
    , "recognize"
    , "she"
    , "soon"
    , "near"
    , "past"
    , "red"
    , "sheet"
    , "sorry"
    , "nearly"
    , "path"
    , "refuse"
    , "ship"
    , "sort"
    , "neck"
    , "pause"
    , "remain"
    , "shirt"
    , "soul"
    , "need"
    , "pay"
    , "remember"
    , "shoe"
    , "sound"
    , "neighbor"
    , "people"
    , "remind"
    , "shoot"
    , "south"
    , "never"
    , "perfect"
    , "remove"
    , "shop"
    , "space"
    , "new"
    , "perhaps"
    , "repeat"
    , "short"
    , "speak"
    , "news"
    , "personal"
    , "reply"
    , "should"
    , "special"
    , "next"
    , "phone"
    , "rest"
    , "shoulder"
    , "spend"
    , "nice"
    , "photo"
    , "return"
    , "shout"
    , "spin"
    , "night"
    , "pick"
    , "reveal"
    , "shove"
    , "spirit"
    , "no"
    , "picture"
    , "rich"
    , "show"
    , "spot"
    , "nobody"
    , "piece"
    , "ride"
    , "shower"
    , "spread"
    , "nod"
    , "pile"
    , "right"
    , "shrug"
    , "spring"
    , "noise"
    , "pink"
    , "ring"
    , "shut"
    , "stage"
    , "none"
    , "place"
    , "rise"
    , "sick"
    , "stair"
    , "nor"
    , "plan"
    , "river"
    , "side"
    , "stand"
    , "normal"
    , "plastic"
    , "road"
    , "sigh"
    , "star"
    , "north"
    , "plate"
    , "rock"
    , "sight"
    , "stare"
    , "nose"
    , "play"
    , "roll"
    , "sign"
    , "start"
    , "not"
    , "please"
    , "roof"
    , "silence"
    , "state"
    , "note"
    , "pocket"
    , "room"
    , "silent"
    , "station"
    , "nothing"
    , "point"
    , "round"
    , "silver"
    , "stay"
    , "notice"
    , "police"
    , "row"
    , "simple"
    , "steal"
    , "now"
    , "pool"
    , "rub"
    , "simply"
    , "step"
    , "number"
    , "poor"
    , "run"
    , "since"
    , "stick"
    , "nurse"
    , "pop"
    , "rush"
    , "sing"
    , "still"
    , "of"
    , "porch"
    , "sad"
    , "single"
    , "stomach"
    , "off"
    , "position"
    , "safe"
    , "sir"
    , "stone"
    , "offer"
    , "possible"
    , "same"
    , "sister"
    , "stop"
    , "office"
    , "pour"
    , "sand"
    , "sit"
    , "store"
    , "officer"
    , "power"
    , "save"
    , "situation"
    , "storm"
    , "often"
    , "prepare"
    , "say"
    , "six"
    , "story"
    , "oh"
    , "press"
    , "scared"
    , "size"
    , "straight"
    , "okay"
    , "pretend"
    , "scene"
    , "skin"
    , "strange"
    , "old"
    , "pretty"
    , "school"
    , "sky"
    , "street"
    , "on"
    , "probably"
    , "scream"
    , "slam"
    , "stretch"
    , "once"
    , "problem"
    , "screen"
    , "sleep"
    , "strike"
    , "one"
    , "promise"
    , "sea"
    , "slide"
    , "strong"
    , "only"
    , "prove"
    , "search"
    , "slightly"
    , "student"
    , "onto"
    , "pull"
    , "seat"
    , "slip"
    , "study"
    , "open"
    , "push"
    , "second"
    , "slow"
    , "stuff"
    , "or"
    , "put"
    , "see"
    , "slowly"
    , "stupid"
    , "order"
    , "question"
    , "seem"
    , "small"
    , "such"
    , "other"
    , "quick"
    , "sell"
    , "smell"
    , "suddenly"
    , "suggest"
    , "thick"
    , "tree"
    , "wash"
    , "window"
    , "suit"
    , "thin"
    , "trip"
    , "watch"
    , "wine"
    , "summer"
    , "thing"
    , "trouble"
    , "water"
    , "wing"
    , "sun"
    , "think"
    , "truck"
    , "wave"
    , "winter"
    , "suppose"
    , "third"
    , "true"
    , "way"
    , "wipe"
    , "sure"
    , "thirty"
    , "trust"
    , "we"
    , "wish"
    , "surface"
    , "this"
    , "truth"
    , "wear"
    , "with"
    , "surprise"
    , "those"
    , "try"
    , "wedding"
    , "within"
    , "sweet"
    , "though"
    , "turn"
    , "week"
    , "without"
    , "swing"
    , "three"
    , "twenty"
    , "weight"
    , "woman"
    , "system"
    , "throat"
    , "twice"
    , "well"
    , "wonder"
    , "table"
    , "through"
    , "two"
    , "west"
    , "wood"
    , "take"
    , "throw"
    , "uncle"
    , "wet"
    , "wooden"
    , "talk"
    , "tie"
    , "under"
    , "what"
    , "word"
    , "tall"
    , "time"
    , "understand"
    , "whatever"
    , "work"
    , "tea"
    , "tiny"
    , "unless"
    , "wheel"
    , "world"
    , "teach"
    , "tire"
    , "until"
    , "when"
    , "worry"
    , "teacher"
    , "to"
    , "up"
    , "where"
    , "would"
    , "team"
    , "today"
    , "upon"
    , "whether"
    , "wrap"
    , "tear"
    , "together"
    , "use"
    , "which"
    , "write"
    , "television"
    , "tomorrow"
    , "usual"
    , "while"
    , "wrong"
    , "tell"
    , "tone"
    , "usually"
    , "whisper"
    , "yard"
    , "ten"
    , "tongue"
    , "very"
    , "white"
    , "yeah"
    , "terrible"
    , "tonight"
    , "view"
    , "who"
    , "year"
    , "than"
    , "too"
    , "village"
    , "whole"
    , "yell"
    , "thank"
    , "tooth"
    , "visit"
    , "whom"
    , "yellow"
    , "that"
    , "top"
    , "voice"
    , "whose"
    , "yes"
    , "the"
    , "toss"
    , "wait"
    , "why"
    , "yet"
    , "their"
    , "touch"
    , "wake"
    , "wide"
    , "you"
    , "them"
    , "toward"
    , "walk"
    , "wife"
    , "young"
    , "themselves"
    , "town"
    , "wall"
    , "wild"
    , "your"
    , "then"
    , "track"
    , "want"
    , "will"
    , "yourself"
    , "there"
    , "train"
    , "war"
    , "win"
    , "these"
    , "travel"
    , "warm"
    , "wind"]}

type alias NbrAleatoire =
  { nombre : Int
  }

init : () -> (NbrAleatoire, Cmd Msg)
init _ =
  ( NbrAleatoire 1
  , Cmd.none
  )

--Update

type Msg
  = Roll
  | NouveauNombre Int


update : Msg -> NbrAleatoire -> (NbrAleatoire, Cmd Msg)
update msg nbrAleatoire =
  case msg of
    Roll ->
      ( nbrAleatoire
      , Random.generate NouveauNombre (Random.int 0 999)
      )

    NouveauNombre nouveauNombre ->
      ( NbrAleatoire nouveauNombre
      , Cmd.none
      )

-- SUBSCRIPTIONS


subscriptions : NbrAleatoire -> Sub Msg
subscriptions nbrAleatoire =
  Sub.none

{-aleatoire : NbrAleatoire -> CmdMsg -> NbrAleatoire
aleatoire nbrAleatoire messageDeCommande =
    nbrAleatoire-}

myArray model = 
    Array.fromList model.rows


myItem myarray nbrAleatoire = 
    Array.get nbrAleatoire.nombre myarray

fromJust : Maybe String -> String
fromJust x = case x of
    Just y -> y
    Nothing -> "Nothing"


{-view : Model -> NbrAleatoire -> Html msg
view model nombreAleatoire =
    div []
        [text<|fromJust<|myItem<|(aleatoire()<|myArray)<|model]-}
view : NbrAleatoire -> Cmd Msg -> Html Msg
view nbrAleatoire cmdMsg =
  div []
    [ text (String.fromInt nbrAleatoire.nombre) ]
    --, button [ onClick Roll ] [ text "Roll" ]
