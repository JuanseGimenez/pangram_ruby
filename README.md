# Determine if a sentence is a pangram.

### Setup
```
bundle install
```

### Example of use

```
pangram = Pangram.new('Glib jocks quiz nymph to vex dwarf')

pangram.is_pangram?
=> true
pangram.missing_letters
=> []

pangram.phrase = 'I love Ruby'

pangram.is_pangram?
=> false
pangram.missing_letters
=> ["a", "c", "d", "f", "g", "h", "j", "k", "m", "n", "p", "q", "s", "t", "w", "x", "z"]

```

### Test

```bash
bundle exec rake spec
```