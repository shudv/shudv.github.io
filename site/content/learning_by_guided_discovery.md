---
title: "Learning by guided discovery"
index: 1
draft: false
---

Some more context to offset the code block which does not look very good in the index.

1. Set the context and establish what is already known and believed to be true.
1. Ask a question that can be derived from already eastablished context.
1. Try and answer the question.
1. Add answer to already established context.
1. Repeat until satisfied.


<pre>
context = setup what is already known
learn()
{
    while (not satisfied)
    {
        // dsdds
        questions = ask_questions_from(context);
        foreach question of questions
        {
            answer = try_answer(question);
            append(context, answer);
        }
    }
}
</pre>