# awscli-sqsall

awscli plugin to treat SQS queues more like files.

ARCHIVED: since awscli2 added [sqs start-message-move-task](https://awscli.amazonaws.com/v2/documentation/api/latest/reference/sqs/start-message-move-task.html), since that was the main use case for this plugin, I've stopped using it. Until an itch to scratch show up, I'm archiving this.

## Quickstart

`receive-all-messages` dumps all messages to a files. `send-all-messages` sends
all file lines as messages to a queue. FIFO queues are supported.

You should be able to do something like:

```bash
aws sqs receive-all-messages --queue my-dlq \
| sed '/some fault/d' \
| aws sqs send-all-messages --queue my-queue
```

Since receive-all-messages doesn't communicate with send-all-messages, and just
deletes the message after printing, you might want to keep a backup. Try this
instead:

```bash
aws sqs receive-all-messages --queue my-dlq \
| tee safe_place \
| sed '/some fault/d' \
| aws sqs send-all-messages --queue my-queue
```

Check the commands' help for more details.

## Installing

```bash
pip install awscli-sqsall
aws configure set plugins.sqsall sqsall
```

## Developing

See [DEVELOPING.md](DEVELOPING.md).
