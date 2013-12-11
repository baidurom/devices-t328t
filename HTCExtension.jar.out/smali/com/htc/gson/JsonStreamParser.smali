.class public final Lcom/htc/gson/JsonStreamParser;
.super Ljava/lang/Object;
.source "JsonStreamParser.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/htc/gson/JsonElement;",
        ">;"
    }
.end annotation


# instance fields
.field private final lock:Ljava/lang/Object;

.field private nextElement:Lcom/htc/gson/JsonElement;

.field private final parser:Lcom/htc/gson/JsonParserJavacc;


# direct methods
.method public constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .parameter "reader"

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/htc/gson/JsonParserJavacc;

    invoke-direct {v0, p1}, Lcom/htc/gson/JsonParserJavacc;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/htc/gson/JsonStreamParser;->parser:Lcom/htc/gson/JsonParserJavacc;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/htc/gson/JsonStreamParser;->lock:Ljava/lang/Object;

    .line 69
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/htc/gson/JsonStreamParser;->nextElement:Lcom/htc/gson/JsonElement;

    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .parameter "json"

    .prologue
    .line 59
    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/htc/gson/JsonStreamParser;-><init>(Ljava/io/Reader;)V

    .line 60
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .prologue
    .line 121
    iget-object v2, p0, Lcom/htc/gson/JsonStreamParser;->lock:Ljava/lang/Object;

    monitor-enter v2

    .line 123
    :try_start_0
    invoke-virtual {p0}, Lcom/htc/gson/JsonStreamParser;->next()Lcom/htc/gson/JsonElement;

    move-result-object v1

    iput-object v1, p0, Lcom/htc/gson/JsonStreamParser;->nextElement:Lcom/htc/gson/JsonElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    const/4 v1, 0x1

    :try_start_1
    monitor-exit v2

    .line 127
    :goto_0
    return v1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Ljava/util/NoSuchElementException;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/htc/gson/JsonStreamParser;->nextElement:Lcom/htc/gson/JsonElement;

    .line 127
    const/4 v1, 0x0

    monitor-exit v2

    goto :goto_0

    .line 129
    .end local v0           #e:Ljava/util/NoSuchElementException;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public next()Lcom/htc/gson/JsonElement;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/gson/JsonParseException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v3, p0, Lcom/htc/gson/JsonStreamParser;->lock:Ljava/lang/Object;

    monitor-enter v3

    .line 85
    :try_start_0
    iget-object v2, p0, Lcom/htc/gson/JsonStreamParser;->nextElement:Lcom/htc/gson/JsonElement;

    if-eqz v2, :cond_0

    .line 86
    iget-object v1, p0, Lcom/htc/gson/JsonStreamParser;->nextElement:Lcom/htc/gson/JsonElement;

    .line 87
    .local v1, returnValue:Lcom/htc/gson/JsonElement;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/htc/gson/JsonStreamParser;->nextElement:Lcom/htc/gson/JsonElement;

    .line 88
    monitor-exit v3

    .line 93
    .end local v1           #returnValue:Lcom/htc/gson/JsonElement;
    :goto_0
    return-object v1

    .line 90
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :try_start_1
    iget-object v2, p0, Lcom/htc/gson/JsonStreamParser;->parser:Lcom/htc/gson/JsonParserJavacc;

    invoke-virtual {v2}, Lcom/htc/gson/JsonParserJavacc;->parse()Lcom/htc/gson/JsonElement;
    :try_end_1
    .catch Lcom/htc/gson/TokenMgrError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lcom/htc/gson/ParseException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/StackOverflowError; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/htc/gson/JsonParseException; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v1

    goto :goto_0

    .line 90
    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .line 94
    :catch_0
    move-exception v0

    .line 95
    .local v0, e:Lcom/htc/gson/TokenMgrError;
    new-instance v2, Lcom/htc/gson/JsonParseException;

    const-string v3, "Failed parsing JSON source to Json"

    invoke-direct {v2, v3, v0}, Lcom/htc/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 96
    .end local v0           #e:Lcom/htc/gson/TokenMgrError;
    :catch_1
    move-exception v0

    .line 97
    .local v0, e:Lcom/htc/gson/ParseException;
    new-instance v2, Lcom/htc/gson/JsonParseException;

    const-string v3, "Failed parsing JSON source to Json"

    invoke-direct {v2, v3, v0}, Lcom/htc/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 98
    .end local v0           #e:Lcom/htc/gson/ParseException;
    :catch_2
    move-exception v0

    .line 99
    .local v0, e:Ljava/lang/StackOverflowError;
    new-instance v2, Lcom/htc/gson/JsonParseException;

    const-string v3, "Failed parsing JSON source to Json"

    invoke-direct {v2, v3, v0}, Lcom/htc/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 100
    .end local v0           #e:Ljava/lang/StackOverflowError;
    :catch_3
    move-exception v0

    .line 101
    .local v0, e:Ljava/lang/OutOfMemoryError;
    new-instance v2, Lcom/htc/gson/JsonParseException;

    const-string v3, "Failed parsing JSON source to Json"

    invoke-direct {v2, v3, v0}, Lcom/htc/gson/JsonParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 102
    .end local v0           #e:Ljava/lang/OutOfMemoryError;
    :catch_4
    move-exception v0

    .line 103
    .local v0, e:Lcom/htc/gson/JsonParseException;
    invoke-virtual {v0}, Lcom/htc/gson/JsonParseException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/io/EOFException;

    if-eqz v2, :cond_1

    .line 104
    new-instance v2, Ljava/util/NoSuchElementException;

    invoke-direct {v2}, Ljava/util/NoSuchElementException;-><init>()V

    throw v2

    .line 106
    :cond_1
    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/htc/gson/JsonStreamParser;->next()Lcom/htc/gson/JsonElement;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
