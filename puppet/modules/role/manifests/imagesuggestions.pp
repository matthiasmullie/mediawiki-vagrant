# == Class: role::imagesuggestions
class role::imagesuggestions {
    include ::role::echo
    mediawiki::extension { 'ImageSuggestions': }
}
