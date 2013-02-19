.class public abstract Lcom/htc/protobuf/AbstractMessage;
.super Lcom/htc/protobuf/AbstractMessageLite;
.source "AbstractMessage.java"

# interfaces
.implements Lcom/htc/protobuf/Message;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/protobuf/AbstractMessage$1;,
        Lcom/htc/protobuf/AbstractMessage$Builder;
    }
.end annotation


# instance fields
.field private memoizedSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/htc/protobuf/AbstractMessageLite;-><init>()V

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/htc/protobuf/AbstractMessage;->memoizedSize:I

    .line 194
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "other"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 160
    if-ne p1, p0, :cond_1

    .line 170
    :cond_0
    :goto_0
    return v1

    .line 163
    :cond_1
    instance-of v3, p1, Lcom/htc/protobuf/Message;

    if-nez v3, :cond_2

    move v1, v2

    .line 164
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 166
    check-cast v0, Lcom/htc/protobuf/Message;

    .line 167
    .local v0, otherMessage:Lcom/htc/protobuf/Message;
    invoke-virtual {p0}, Lcom/htc/protobuf/AbstractMessage;->getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v3

    invoke-interface {v0}, Lcom/htc/protobuf/Message;->getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v4

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 168
    goto :goto_0

    .line 170
    :cond_3
    invoke-virtual {p0}, Lcom/htc/protobuf/AbstractMessage;->getAllFields()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0}, Lcom/htc/protobuf/Message;->getAllFields()Ljava/util/Map;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/htc/protobuf/AbstractMessage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v3

    invoke-interface {v0}, Lcom/htc/protobuf/Message;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/htc/protobuf/UnknownFieldSet;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 10

    .prologue
    .line 120
    iget v4, p0, Lcom/htc/protobuf/AbstractMessage;->memoizedSize:I

    .line 121
    .local v4, size:I
    const/4 v8, -0x1

    if-eq v4, v8, :cond_0

    move v5, v4

    .line 151
    .end local v4           #size:I
    .local v5, size:I
    :goto_0
    return v5

    .line 125
    .end local v5           #size:I
    .restart local v4       #size:I
    :cond_0
    const/4 v4, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/htc/protobuf/AbstractMessage;->getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/protobuf/Descriptors$Descriptor;->getOptions()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v8

    invoke-virtual {v8}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v3

    .line 130
    .local v3, isMessageSet:Z
    invoke-virtual {p0}, Lcom/htc/protobuf/AbstractMessage;->getAllFields()Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 131
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    .line 132
    .local v1, field:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    .line 133
    .local v7, value:Ljava/lang/Object;
    if-eqz v3, :cond_1

    invoke-virtual {v1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v8

    sget-object v9, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v8, v9, :cond_1

    invoke-virtual {v1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v8

    if-nez v8, :cond_1

    .line 136
    invoke-virtual {v1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v8

    check-cast v7, Lcom/htc/protobuf/Message;

    .end local v7           #value:Ljava/lang/Object;
    invoke-static {v8, v7}, Lcom/htc/protobuf/CodedOutputStream;->computeMessageSetExtensionSize(ILcom/htc/protobuf/MessageLite;)I

    move-result v8

    add-int/2addr v4, v8

    goto :goto_1

    .line 139
    .restart local v7       #value:Ljava/lang/Object;
    :cond_1
    invoke-static {v1, v7}, Lcom/htc/protobuf/FieldSet;->computeFieldSize(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)I

    move-result v8

    add-int/2addr v4, v8

    goto :goto_1

    .line 143
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    .end local v1           #field:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    .end local v7           #value:Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Lcom/htc/protobuf/AbstractMessage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v6

    .line 144
    .local v6, unknownFields:Lcom/htc/protobuf/UnknownFieldSet;
    if-eqz v3, :cond_3

    .line 145
    invoke-virtual {v6}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSizeAsMessageSet()I

    move-result v8

    add-int/2addr v4, v8

    .line 150
    :goto_2
    iput v4, p0, Lcom/htc/protobuf/AbstractMessage;->memoizedSize:I

    move v5, v4

    .line 151
    .end local v4           #size:I
    .restart local v5       #size:I
    goto :goto_0

    .line 147
    .end local v5           #size:I
    .restart local v4       #size:I
    :cond_3
    invoke-virtual {v6}, Lcom/htc/protobuf/UnknownFieldSet;->getSerializedSize()I

    move-result v8

    add-int/2addr v4, v8

    goto :goto_2
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 180
    const/16 v0, 0x29

    .line 181
    .local v0, hash:I
    invoke-virtual {p0}, Lcom/htc/protobuf/AbstractMessage;->getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x30b

    .line 182
    mul-int/lit8 v1, v0, 0x35

    invoke-virtual {p0}, Lcom/htc/protobuf/AbstractMessage;->getAllFields()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 183
    mul-int/lit8 v1, v0, 0x1d

    invoke-virtual {p0}, Lcom/htc/protobuf/AbstractMessage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v2

    invoke-virtual {v2}, Lcom/htc/protobuf/UnknownFieldSet;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 184
    return v0
.end method

.method public isInitialized()Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 57
    invoke-virtual {p0}, Lcom/htc/protobuf/AbstractMessage;->getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/htc/protobuf/Descriptors$Descriptor;->getFields()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    .line 58
    .local v2, field:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    invoke-virtual {v2}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isRequired()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 59
    invoke-virtual {p0, v2}, Lcom/htc/protobuf/AbstractMessage;->hasField(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v6

    .line 84
    .end local v2           #field:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    .end local v3           #i$:Ljava/util/Iterator;
    :goto_0
    return v5

    .line 67
    .restart local v3       #i$:Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/AbstractMessage;->getAllFields()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .end local v3           #i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 68
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    .line 69
    .restart local v2       #field:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    invoke-virtual {v2}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getJavaType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v5

    sget-object v7, Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v5, v7, :cond_2

    .line 70
    invoke-virtual {v2}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 71
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Message;

    .line 72
    .local v0, element:Lcom/htc/protobuf/Message;
    invoke-interface {v0}, Lcom/htc/protobuf/Message;->isInitialized()Z

    move-result v5

    if-nez v5, :cond_3

    move v5, v6

    .line 73
    goto :goto_0

    .line 77
    .end local v0           #element:Lcom/htc/protobuf/Message;
    .end local v4           #i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/htc/protobuf/Message;

    invoke-interface {v5}, Lcom/htc/protobuf/Message;->isInitialized()Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    .line 78
    goto :goto_0

    .line 84
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    .end local v2           #field:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    :cond_5
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    invoke-static {p0}, Lcom/htc/protobuf/TextFormat;->printToString(Lcom/htc/protobuf/Message;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lcom/htc/protobuf/CodedOutputStream;)V
    .locals 8
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/htc/protobuf/AbstractMessage;->getDescriptorForType()Lcom/htc/protobuf/Descriptors$Descriptor;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/protobuf/Descriptors$Descriptor;->getOptions()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v6

    invoke-virtual {v6}, Lcom/htc/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v3

    .line 97
    .local v3, isMessageSet:Z
    invoke-virtual {p0}, Lcom/htc/protobuf/AbstractMessage;->getAllFields()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 98
    .local v0, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    .line 99
    .local v1, field:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    .line 100
    .local v5, value:Ljava/lang/Object;
    if-eqz v3, :cond_0

    invoke-virtual {v1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isExtension()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getType()Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v6

    sget-object v7, Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/htc/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v6, v7, :cond_0

    invoke-virtual {v1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v6

    if-nez v6, :cond_0

    .line 103
    invoke-virtual {v1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->getNumber()I

    move-result v6

    check-cast v5, Lcom/htc/protobuf/Message;

    .end local v5           #value:Ljava/lang/Object;
    invoke-virtual {p1, v6, v5}, Lcom/htc/protobuf/CodedOutputStream;->writeMessageSetExtension(ILcom/htc/protobuf/MessageLite;)V

    goto :goto_0

    .line 105
    .restart local v5       #value:Ljava/lang/Object;
    :cond_0
    invoke-static {v1, v5, p1}, Lcom/htc/protobuf/FieldSet;->writeField(Lcom/htc/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;Lcom/htc/protobuf/CodedOutputStream;)V

    goto :goto_0

    .line 109
    .end local v0           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Lcom/htc/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;>;"
    .end local v1           #field:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    .end local v5           #value:Ljava/lang/Object;
    :cond_1
    invoke-virtual {p0}, Lcom/htc/protobuf/AbstractMessage;->getUnknownFields()Lcom/htc/protobuf/UnknownFieldSet;

    move-result-object v4

    .line 110
    .local v4, unknownFields:Lcom/htc/protobuf/UnknownFieldSet;
    if-eqz v3, :cond_2

    .line 111
    invoke-virtual {v4, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeAsMessageSetTo(Lcom/htc/protobuf/CodedOutputStream;)V

    .line 115
    :goto_1
    return-void

    .line 113
    :cond_2
    invoke-virtual {v4, p1}, Lcom/htc/protobuf/UnknownFieldSet;->writeTo(Lcom/htc/protobuf/CodedOutputStream;)V

    goto :goto_1
.end method
