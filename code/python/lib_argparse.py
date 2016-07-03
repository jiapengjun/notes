import argparse

parser = argparse.ArgumentParser(description='Simulate Git help.',
        epilog="'git help -a' and 'git help -g' list available subcommands and some concept guides. See 'git help <command>' or 'git help <concept>' to read about a specific subcommand or concept.")

parser.add_argument('--version', '-v', action='version', 
        version='%(prog)s 2.0')

#group1 = parser.add_argument_group(description="start a working area(see also: git help tutorial") 
sub1= parser.add_subparsers(title="start a working area(see also: git help tutorial") 
sub1.add_parser('clone', 
    help='Clone a repository into a new directory') 
sub1.add_parser('init', 
    help="Create an empty Git repository or reinitialize an existing one")

group2 = parser.add_argument_group(description="work on the current change (see also: git help everyday)")
group2.add_argument('add', 
    help='Add file contents to the index')
group2.add_argument('mv',
    help='Move or rename a file, a directory, or a symlink')

group3 = parser.add_argument_group(description="collaborate (see also: git help workflows)")
group3.add_argument('featch', 
    help='Download objects and refs from another repository')
group3.add_argument('pull',
    help='Fetch from and integrate with another repository or a local branch')
group3.add_argument('push', 
    help='Update remote refs along with associated objects')

#args = parser.parse_args()
parser.print_help()
