local ls = require("luasnip")
-- some shorthands...
local snip = ls.snippet
-- local node = ls.snippet_node
-- local text = ls.text_node
local insert = ls.insert_node
-- local func = ls.function_node
-- local choice = ls.choice_node
-- local dynamicn = ls.dynamic_node
local fmt = require("luasnip.extras.fmt").fmt

ls.add_snippets(nil, {
	all = {
		snip(
			"cpp",
			fmt(
				[[
#include<bits/stdc++.h>
using namespace std;
#define sfor(i, l, r) for (int i = l; i < r; ++i)
#define bfor(i, r, l) for (int i = r; i >= l; --i)
#define endl "\n";
#define all(a) a.begin(), a.end()
using ll = long long;
using vi = vector<int>;
using ld = long double;
using pii = pair<int, int>;
using vvi = vector<vector<int>>;
void solve(){{
 {}
}}
int main(){{
    ios_base::sync_with_stdio(false);
    cin.tie(NULL);
    cout.tie(NULL);
    int t;
    cin>>t;
    while(t--){{
      solve();
    }}
    return 0;
}}
]],
				{
					insert(1, ""),
				}
			)
		),
	},
})
