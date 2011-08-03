#ifndef ERLUNA_TERM_H
#define ERLUNA_TERM_H

#define rel2abs(L, x) do { \
	if(x < 0) { \
		x = lua_gettop(L) + x + 1; \
	} \
} while(0)

void lua_to_erlang(async_erluna_t *data, int index);
int  erlang_to_lua(async_erluna_t *data, int *index);

#endif // ERLUNA_TERM_H
