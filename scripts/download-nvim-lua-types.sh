current_dir=$(readlink -f $(dirname ${BASH_SOURCE[0]}))
upper_dir=$(dirname $current_dir)
sumneko_dir=$current_dir/coc-sumneko-lua
types_dir=$upper_dir/types
echo Current dir: $current_dir
echo Upper dir: $upper_dir
echo Sumneko dir: $sumneko_dir
echo Types dir: $types_dir

if [[ -d $sumneko_dir ]]
then
  rm -rf $sumneko_dir
fi
if [[ -d $types_dir ]]
then
  rm -r $types_dir
fi

git clone git@github.com:xiyaowong/coc-sumneko-lua.git $sumneko_dir
mv $sumneko_dir/nvim_lua_types $upper_dir/types
rm -rf $sumneko_dir
