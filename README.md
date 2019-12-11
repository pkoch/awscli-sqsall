awscli-sqsall
=============

Treat SQS queues more like files, with `receive-all-messages` and
`send-all-messages`.

Check their help for more details. You should be able to do something like this:
```
aws sqs receive-all-messages --queue my-dlq | sed '/some fault/d' | aws sqs send-all-messages my-queue
```

Since receive-all-messages doesn't communicate with send-all-messages, you might want to keep a backup. Try this instead:
```
aws sqs receive-all-messages --queue my-dlq | tee safe_place | sed '/some fault/d' | aws sqs send-all-messages my-queue
```

Check their help for more details.

Installing
----------
```
pip install awscli-sqsall
aws configure set plugins.sqsall sqsall
```
