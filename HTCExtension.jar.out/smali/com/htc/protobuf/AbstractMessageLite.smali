.class public abstract Lcom/htc/protobuf/AbstractMessageLite;
.super Ljava/lang/Object;
.source "AbstractMessageLite.java"

# interfaces
.implements Lcom/htc/protobuf/MessageLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/AbstractMessageLite$Builder;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 104
    return-void
.end method


# virtual methods
.method public toByteArray()[B
    .locals 5

    .prologue
    .line 66
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v3

    new-array v2, v3, [B

    .line 67
    .local v2, result:[B
    invoke-static {v2}, Lcom/htc/protobuf/CodedOutputStream;->newInstance([B)Lcom/htc/protobuf/CodedOutputStream;

    move-result-object v1

    .line 68
    .local v1, output:Lcom/htc/protobuf/CodedOutputStream;
    invoke-virtual {p0, v1}, Lcom/htc/protobuf/AbstractMessageLite;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 69
    invoke-virtual {v1}, Lcom/htc/protobuf/CodedOutputStream;->checkNoSpaceLeft()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    return-object v2

    .line 71
    .end local v1           #output:Lcom/htc/protobuf/CodedOutputStream;
    .end local v2           #result:[B
    :catch_0
    move-exception v0

    .line 72
    .local v0, e:Ljava/io/IOException;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Serializing to a byte array threw an IOException (should never happen)."

    invoke-direct {v3, v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public toByteString()Lcom/htc/protobuf/ByteString;
    .locals 4

    .prologue
    .line 53
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v2

    invoke-static {v2}, Lcom/htc/protobuf/ByteString;->newCodedBuilder(I)Lcom/htc/protobuf/ByteString$CodedBuilder;

    move-result-object v1

    .line 55
    .local v1, out:Lcom/htc/protobuf/ByteString$CodedBuilder;
    invoke-virtual {v1}, Lcom/htc/protobuf/ByteString$CodedBuilder;->getCodedOutput()Lcom/htc/protobuf/CodedOutputStream;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/htc/protobuf/AbstractMessageLite;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 56
    invoke-virtual {v1}, Lcom/htc/protobuf/ByteString$CodedBuilder;->build()Lcom/htc/protobuf/ByteString;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 57
    .end local v1           #out:Lcom/htc/protobuf/ByteString$CodedBuilder;
    :catch_0
    move-exception v0

    .line 58
    .local v0, e:Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Serializing to a ByteString threw an IOException (should never happen)."

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public writeDelimitedTo(Ljava/io/OutputStream;)V
    .locals 2
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/htc/protobuf/CodedOutputStream;

    move-result-object v0

    .line 94
    .local v0, codedOutput:Lcom/htc/protobuf/CodedOutputStream;
    invoke-virtual {p0}, Lcom/htc/protobuf/AbstractMessageLite;->getSerializedSize()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/htc/protobuf/CodedOutputStream;->writeRawVarint32(I)V

    .line 95
    invoke-virtual {p0, v0}, Lcom/htc/protobuf/AbstractMessageLite;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 96
    invoke-virtual {v0}, Lcom/htc/protobuf/CodedOutputStream;->flush()V

    .line 97
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 1
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    invoke-static {p1}, Lcom/htc/protobuf/CodedOutputStream;->newInstance(Ljava/io/OutputStream;)Lcom/htc/protobuf/CodedOutputStream;

    move-result-object v0

    .line 84
    .local v0, codedOutput:Lcom/htc/protobuf/CodedOutputStream;
    invoke-virtual {p0, v0}, Lcom/htc/protobuf/AbstractMessageLite;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 85
    invoke-virtual {v0}, Lcom/htc/protobuf/CodedOutputStream;->flush()V

    .line 86
    return-void
.end method
