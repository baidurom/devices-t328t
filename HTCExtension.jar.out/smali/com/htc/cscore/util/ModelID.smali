.class public final Lcom/htc/cscore/util/ModelID;
.super Ljava/lang/Object;
.source "ModelID.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/htc/cscore/util/ModelID$DEVICE;,
        Lcom/htc/cscore/util/ModelID$SKU;
    }
.end annotation


# static fields
.field private static mDeviceMappingTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field

.field private static mSkuMappingTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/UUID;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/16 v4, 0x88

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/cscore/util/ModelID;->mSkuMappingTable:Ljava/util/Map;

    .line 103
    sget-object v0, Lcom/htc/cscore/util/ModelID;->mSkuMappingTable:Ljava/util/Map;

    new-instance v1, Lcom/htc/cscore/util/ModelID$SKU;

    const/16 v2, 0xd8

    const/4 v3, 0x2

    invoke-direct {v1, v4, v2, v3}, Lcom/htc/cscore/util/ModelID$SKU;-><init>(SSS)V

    invoke-virtual {v1}, Lcom/htc/cscore/util/ModelID$SKU;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "823ac2c9-403e-4864-8eb4-d13fa54beb10"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/htc/cscore/util/ModelID;->mDeviceMappingTable:Ljava/util/Map;

    .line 114
    sget-object v0, Lcom/htc/cscore/util/ModelID;->mDeviceMappingTable:Ljava/util/Map;

    new-instance v1, Lcom/htc/cscore/util/ModelID$DEVICE;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/htc/cscore/util/ModelID$DEVICE;-><init>(S)V

    invoke-virtual {v1}, Lcom/htc/cscore/util/ModelID$DEVICE;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "f1da4ce1-0fb1-48dc-820a-8124cdb8a08d"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/htc/cscore/util/ModelID;->mDeviceMappingTable:Ljava/util/Map;

    new-instance v1, Lcom/htc/cscore/util/ModelID$DEVICE;

    const/16 v2, 0xe

    invoke-direct {v1, v2}, Lcom/htc/cscore/util/ModelID$DEVICE;-><init>(S)V

    invoke-virtual {v1}, Lcom/htc/cscore/util/ModelID$DEVICE;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "01ddc32c-1d54-4d70-ae1e-252d3114fda3"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/htc/cscore/util/ModelID;->mDeviceMappingTable:Ljava/util/Map;

    new-instance v1, Lcom/htc/cscore/util/ModelID$DEVICE;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Lcom/htc/cscore/util/ModelID$DEVICE;-><init>(S)V

    invoke-virtual {v1}, Lcom/htc/cscore/util/ModelID$DEVICE;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "5009841b-530a-43c7-85ae-7f8b6b445fc4"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/htc/cscore/util/ModelID;->mDeviceMappingTable:Ljava/util/Map;

    new-instance v1, Lcom/htc/cscore/util/ModelID$DEVICE;

    const/16 v2, 0x21

    invoke-direct {v1, v2}, Lcom/htc/cscore/util/ModelID$DEVICE;-><init>(S)V

    invoke-virtual {v1}, Lcom/htc/cscore/util/ModelID$DEVICE;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3a4d147c-b364-4865-b82f-748376ea0fad"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/htc/cscore/util/ModelID;->mDeviceMappingTable:Ljava/util/Map;

    new-instance v1, Lcom/htc/cscore/util/ModelID$DEVICE;

    const/16 v2, 0x22

    invoke-direct {v1, v2}, Lcom/htc/cscore/util/ModelID$DEVICE;-><init>(S)V

    invoke-virtual {v1}, Lcom/htc/cscore/util/ModelID$DEVICE;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3a4d147c-b364-4865-b82f-748376ea0fad"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/htc/cscore/util/ModelID;->mDeviceMappingTable:Ljava/util/Map;

    new-instance v1, Lcom/htc/cscore/util/ModelID$DEVICE;

    const/16 v2, 0x28

    invoke-direct {v1, v2}, Lcom/htc/cscore/util/ModelID$DEVICE;-><init>(S)V

    invoke-virtual {v1}, Lcom/htc/cscore/util/ModelID$DEVICE;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "beeeef8a-833b-401a-95d3-09bc277411d1"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/htc/cscore/util/ModelID;->mDeviceMappingTable:Ljava/util/Map;

    new-instance v1, Lcom/htc/cscore/util/ModelID$DEVICE;

    const/16 v2, 0x30

    invoke-direct {v1, v2}, Lcom/htc/cscore/util/ModelID$DEVICE;-><init>(S)V

    invoke-virtual {v1}, Lcom/htc/cscore/util/ModelID$DEVICE;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3ba1d32a-c758-48a2-bee0-31b5850ce41c"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/htc/cscore/util/ModelID;->mDeviceMappingTable:Ljava/util/Map;

    new-instance v1, Lcom/htc/cscore/util/ModelID$DEVICE;

    const/16 v2, 0x3e

    invoke-direct {v1, v2}, Lcom/htc/cscore/util/ModelID$DEVICE;-><init>(S)V

    invoke-virtual {v1}, Lcom/htc/cscore/util/ModelID$DEVICE;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "da2f5aa8-c8b2-4eaa-bdfd-f32b5063fc5e"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/htc/cscore/util/ModelID;->mDeviceMappingTable:Ljava/util/Map;

    new-instance v1, Lcom/htc/cscore/util/ModelID$DEVICE;

    const/16 v2, 0x41

    invoke-direct {v1, v2}, Lcom/htc/cscore/util/ModelID$DEVICE;-><init>(S)V

    invoke-virtual {v1}, Lcom/htc/cscore/util/ModelID$DEVICE;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "19a3b86b-4058-4700-b288-eeeb6d303a0c"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/htc/cscore/util/ModelID;->mDeviceMappingTable:Ljava/util/Map;

    new-instance v1, Lcom/htc/cscore/util/ModelID$DEVICE;

    const/16 v2, 0x42

    invoke-direct {v1, v2}, Lcom/htc/cscore/util/ModelID$DEVICE;-><init>(S)V

    invoke-virtual {v1}, Lcom/htc/cscore/util/ModelID$DEVICE;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "19a3b86b-4058-4700-b288-eeeb6d303a0c"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    sget-object v0, Lcom/htc/cscore/util/ModelID;->mDeviceMappingTable:Ljava/util/Map;

    new-instance v1, Lcom/htc/cscore/util/ModelID$DEVICE;

    const/16 v2, 0x50

    invoke-direct {v1, v2}, Lcom/htc/cscore/util/ModelID$DEVICE;-><init>(S)V

    invoke-virtual {v1}, Lcom/htc/cscore/util/ModelID$DEVICE;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0587747c-e8fe-4e88-8e69-6325ece746a8"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    sget-object v0, Lcom/htc/cscore/util/ModelID;->mDeviceMappingTable:Ljava/util/Map;

    new-instance v1, Lcom/htc/cscore/util/ModelID$DEVICE;

    const/16 v2, 0x5b

    invoke-direct {v1, v2}, Lcom/htc/cscore/util/ModelID$DEVICE;-><init>(S)V

    invoke-virtual {v1}, Lcom/htc/cscore/util/ModelID$DEVICE;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "cee5e25c-611e-4de8-bebd-b846a3a59a9e"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    sget-object v0, Lcom/htc/cscore/util/ModelID;->mDeviceMappingTable:Ljava/util/Map;

    new-instance v1, Lcom/htc/cscore/util/ModelID$DEVICE;

    const/16 v2, 0x58

    invoke-direct {v1, v2}, Lcom/htc/cscore/util/ModelID$DEVICE;-><init>(S)V

    invoke-virtual {v1}, Lcom/htc/cscore/util/ModelID$DEVICE;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "03ef249e-4a56-41be-9d03-477ebc1dfd95"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    sget-object v0, Lcom/htc/cscore/util/ModelID;->mDeviceMappingTable:Ljava/util/Map;

    new-instance v1, Lcom/htc/cscore/util/ModelID$DEVICE;

    const/16 v2, 0x62

    invoke-direct {v1, v2}, Lcom/htc/cscore/util/ModelID$DEVICE;-><init>(S)V

    invoke-virtual {v1}, Lcom/htc/cscore/util/ModelID$DEVICE;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "e224f852-71d4-48fe-8681-6c1f9cc1a8dd"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v0, Lcom/htc/cscore/util/ModelID;->mDeviceMappingTable:Ljava/util/Map;

    new-instance v1, Lcom/htc/cscore/util/ModelID$DEVICE;

    const/16 v2, 0x63

    invoke-direct {v1, v2}, Lcom/htc/cscore/util/ModelID$DEVICE;-><init>(S)V

    invoke-virtual {v1}, Lcom/htc/cscore/util/ModelID$DEVICE;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "9f4fa1d9-843a-4b79-91cd-dff5b3da4f8f"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v0, Lcom/htc/cscore/util/ModelID;->mDeviceMappingTable:Ljava/util/Map;

    new-instance v1, Lcom/htc/cscore/util/ModelID$DEVICE;

    const/16 v2, 0x61

    invoke-direct {v1, v2}, Lcom/htc/cscore/util/ModelID$DEVICE;-><init>(S)V

    invoke-virtual {v1}, Lcom/htc/cscore/util/ModelID$DEVICE;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1661a638-f997-4eb3-8223-6c5ed6e635eb"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v0, Lcom/htc/cscore/util/ModelID;->mDeviceMappingTable:Ljava/util/Map;

    new-instance v1, Lcom/htc/cscore/util/ModelID$DEVICE;

    const/16 v2, 0x7c

    invoke-direct {v1, v2}, Lcom/htc/cscore/util/ModelID$DEVICE;-><init>(S)V

    invoke-virtual {v1}, Lcom/htc/cscore/util/ModelID$DEVICE;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "90c7a8c0-bdc5-41fc-b1c2-110b514895ec"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    sget-object v0, Lcom/htc/cscore/util/ModelID;->mDeviceMappingTable:Ljava/util/Map;

    new-instance v1, Lcom/htc/cscore/util/ModelID$DEVICE;

    const/16 v2, 0x7b

    invoke-direct {v1, v2}, Lcom/htc/cscore/util/ModelID$DEVICE;-><init>(S)V

    invoke-virtual {v1}, Lcom/htc/cscore/util/ModelID$DEVICE;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "60a5e345-c4eb-4992-bc96-35faafafe9cf"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/htc/cscore/util/ModelID;->mDeviceMappingTable:Ljava/util/Map;

    new-instance v1, Lcom/htc/cscore/util/ModelID$DEVICE;

    const/16 v2, 0x7e

    invoke-direct {v1, v2}, Lcom/htc/cscore/util/ModelID$DEVICE;-><init>(S)V

    invoke-virtual {v1}, Lcom/htc/cscore/util/ModelID$DEVICE;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "3fa8fb90-60c5-4685-b236-b8ba77a1f9fb"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    sget-object v0, Lcom/htc/cscore/util/ModelID;->mDeviceMappingTable:Ljava/util/Map;

    new-instance v1, Lcom/htc/cscore/util/ModelID$DEVICE;

    invoke-direct {v1, v4}, Lcom/htc/cscore/util/ModelID$DEVICE;-><init>(S)V

    invoke-virtual {v1}, Lcom/htc/cscore/util/ModelID$DEVICE;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "2fc11a92-f844-4bef-99a6-0f8e0ec457d9"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v0, Lcom/htc/cscore/util/ModelID;->mDeviceMappingTable:Ljava/util/Map;

    new-instance v1, Lcom/htc/cscore/util/ModelID$DEVICE;

    const/16 v2, 0x89

    invoke-direct {v1, v2}, Lcom/htc/cscore/util/ModelID$DEVICE;-><init>(S)V

    invoke-virtual {v1}, Lcom/htc/cscore/util/ModelID$DEVICE;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "e7866a1c-9402-4d80-8192-81f0f0416e6c"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v0, Lcom/htc/cscore/util/ModelID;->mDeviceMappingTable:Ljava/util/Map;

    new-instance v1, Lcom/htc/cscore/util/ModelID$DEVICE;

    const/16 v2, 0x8a

    invoke-direct {v1, v2}, Lcom/htc/cscore/util/ModelID$DEVICE;-><init>(S)V

    invoke-virtual {v1}, Lcom/htc/cscore/util/ModelID$DEVICE;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "350a7e68-76c0-40e6-a42c-18a4019b9bba"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v0, Lcom/htc/cscore/util/ModelID;->mDeviceMappingTable:Ljava/util/Map;

    new-instance v1, Lcom/htc/cscore/util/ModelID$DEVICE;

    const/16 v2, 0x94

    invoke-direct {v1, v2}, Lcom/htc/cscore/util/ModelID$DEVICE;-><init>(S)V

    invoke-virtual {v1}, Lcom/htc/cscore/util/ModelID$DEVICE;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "8f7fa378-4dba-4649-93ff-58a354b5a25d"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v0, Lcom/htc/cscore/util/ModelID;->mDeviceMappingTable:Ljava/util/Map;

    new-instance v1, Lcom/htc/cscore/util/ModelID$DEVICE;

    const/16 v2, 0x9d

    invoke-direct {v1, v2}, Lcom/htc/cscore/util/ModelID$DEVICE;-><init>(S)V

    invoke-virtual {v1}, Lcom/htc/cscore/util/ModelID$DEVICE;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bd20ddd8-6538-481b-bfdf-a0cedef66580"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v0, Lcom/htc/cscore/util/ModelID;->mDeviceMappingTable:Ljava/util/Map;

    new-instance v1, Lcom/htc/cscore/util/ModelID$DEVICE;

    const/16 v2, 0x95

    invoke-direct {v1, v2}, Lcom/htc/cscore/util/ModelID$DEVICE;-><init>(S)V

    invoke-virtual {v1}, Lcom/htc/cscore/util/ModelID$DEVICE;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "d33d6db5-9fb7-4250-9045-df20bc85f744"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v0, Lcom/htc/cscore/util/ModelID;->mDeviceMappingTable:Ljava/util/Map;

    new-instance v1, Lcom/htc/cscore/util/ModelID$DEVICE;

    const/16 v2, 0x96

    invoke-direct {v1, v2}, Lcom/htc/cscore/util/ModelID$DEVICE;-><init>(S)V

    invoke-virtual {v1}, Lcom/htc/cscore/util/ModelID$DEVICE;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "b3cf8d51-e0c1-4b2e-9b7c-4e2c3c78edc8"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v0, Lcom/htc/cscore/util/ModelID;->mDeviceMappingTable:Ljava/util/Map;

    new-instance v1, Lcom/htc/cscore/util/ModelID$DEVICE;

    const/16 v2, 0x97

    invoke-direct {v1, v2}, Lcom/htc/cscore/util/ModelID$DEVICE;-><init>(S)V

    invoke-virtual {v1}, Lcom/htc/cscore/util/ModelID$DEVICE;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "690ae1b8-4704-43d0-a058-d0624d44da95"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/htc/cscore/util/ModelID;->mDeviceMappingTable:Ljava/util/Map;

    new-instance v1, Lcom/htc/cscore/util/ModelID$DEVICE;

    const/16 v2, 0xab

    invoke-direct {v1, v2}, Lcom/htc/cscore/util/ModelID$DEVICE;-><init>(S)V

    invoke-virtual {v1}, Lcom/htc/cscore/util/ModelID$DEVICE;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "8482b0ab-973c-47b8-9549-cf9ad712f4a2"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v0, Lcom/htc/cscore/util/ModelID;->mDeviceMappingTable:Ljava/util/Map;

    new-instance v1, Lcom/htc/cscore/util/ModelID$DEVICE;

    const/16 v2, 0xa8

    invoke-direct {v1, v2}, Lcom/htc/cscore/util/ModelID$DEVICE;-><init>(S)V

    invoke-virtual {v1}, Lcom/htc/cscore/util/ModelID$DEVICE;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "42950b55-f92a-4408-808e-0f416ee2060c"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v0, Lcom/htc/cscore/util/ModelID;->mDeviceMappingTable:Ljava/util/Map;

    new-instance v1, Lcom/htc/cscore/util/ModelID$DEVICE;

    const/16 v2, 0xa9

    invoke-direct {v1, v2}, Lcom/htc/cscore/util/ModelID$DEVICE;-><init>(S)V

    invoke-virtual {v1}, Lcom/htc/cscore/util/ModelID$DEVICE;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "43763cd1-b223-499e-998c-bf648bdcfa5d"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v0, Lcom/htc/cscore/util/ModelID;->mDeviceMappingTable:Ljava/util/Map;

    new-instance v1, Lcom/htc/cscore/util/ModelID$DEVICE;

    const/16 v2, 0xaa

    invoke-direct {v1, v2}, Lcom/htc/cscore/util/ModelID$DEVICE;-><init>(S)V

    invoke-virtual {v1}, Lcom/htc/cscore/util/ModelID$DEVICE;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "1a4b8802-1abb-432c-b8d9-7a90e3ee5b64"

    invoke-static {v2}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 64
    return-void
.end method

.method public static get()Ljava/util/UUID;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 191
    const/4 v2, 0x0

    .line 193
    .local v2, uuid:Ljava/util/UUID;
    new-instance v3, Lcom/htc/cscore/util/ModelID$DEVICE;

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    invoke-direct {v3, v4}, Lcom/htc/cscore/util/ModelID$DEVICE;-><init>(S)V

    invoke-virtual {v3}, Lcom/htc/cscore/util/ModelID$DEVICE;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    .local v0, device:Ljava/lang/String;
    sget-object v3, Lcom/htc/cscore/util/ModelID;->mDeviceMappingTable:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 195
    sget-object v3, Lcom/htc/cscore/util/ModelID;->mDeviceMappingTable:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #uuid:Ljava/util/UUID;
    check-cast v2, Ljava/util/UUID;

    .line 198
    .restart local v2       #uuid:Ljava/util/UUID;
    :cond_0
    new-instance v3, Lcom/htc/cscore/util/ModelID$SKU;

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    invoke-direct {v3, v4, v5, v6}, Lcom/htc/cscore/util/ModelID$SKU;-><init>(SSS)V

    invoke-virtual {v3}, Lcom/htc/cscore/util/ModelID$SKU;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, sku:Ljava/lang/String;
    sget-object v3, Lcom/htc/cscore/util/ModelID;->mSkuMappingTable:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 204
    sget-object v3, Lcom/htc/cscore/util/ModelID;->mSkuMappingTable:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #uuid:Ljava/util/UUID;
    check-cast v2, Ljava/util/UUID;

    .line 207
    .restart local v2       #uuid:Ljava/util/UUID;
    :cond_1
    return-object v2
.end method

.method public static get(Landroid/content/Context;)Ljava/util/UUID;
    .locals 7
    .parameter "context"

    .prologue
    .line 153
    if-nez p0, :cond_1

    const/4 v2, 0x0

    .line 181
    :cond_0
    :goto_0
    return-object v2

    .line 155
    :cond_1
    const/4 v2, 0x0

    .line 157
    .local v2, uuid:Ljava/util/UUID;
    new-instance v3, Lcom/htc/cscore/util/ModelID$DEVICE;

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    invoke-direct {v3, v4}, Lcom/htc/cscore/util/ModelID$DEVICE;-><init>(S)V

    invoke-virtual {v3}, Lcom/htc/cscore/util/ModelID$DEVICE;->toString()Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, device:Ljava/lang/String;
    sget-object v3, Lcom/htc/cscore/util/ModelID;->mDeviceMappingTable:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 159
    sget-object v3, Lcom/htc/cscore/util/ModelID;->mDeviceMappingTable:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #uuid:Ljava/util/UUID;
    check-cast v2, Ljava/util/UUID;

    .line 161
    .restart local v2       #uuid:Ljava/util/UUID;
    const/16 v3, 0x28

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v3, v4, :cond_2

    invoke-static {}, Lcom/htc/cscore/util/CSUtil;->isWifiOnlyDevice()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 164
    const-string v3, "5d9741c5-c8c9-42c5-9e71-d0b08324f7ed"

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    .line 166
    :cond_2
    const/16 v3, 0x7b

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    if-ne v3, v4, :cond_3

    sget-object v3, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_Sense_Version:Ljava/lang/String;

    const-string v4, "3.5"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 169
    const-string v3, "51b8021c-0d3b-40e8-bea0-012b931a2032"

    invoke-static {v3}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v2

    .line 172
    :cond_3
    new-instance v3, Lcom/htc/cscore/util/ModelID$SKU;

    sget-short v4, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEVICE_flag:S

    sget-short v5, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_PROJECT_flag:S

    sget-short v6, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_LANGUAGE_flag:S

    invoke-direct {v3, v4, v5, v6}, Lcom/htc/cscore/util/ModelID$SKU;-><init>(SSS)V

    invoke-virtual {v3}, Lcom/htc/cscore/util/ModelID$SKU;->toString()Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, sku:Ljava/lang/String;
    sget-object v3, Lcom/htc/cscore/util/ModelID;->mSkuMappingTable:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 178
    sget-object v3, Lcom/htc/cscore/util/ModelID;->mSkuMappingTable:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #uuid:Ljava/util/UUID;
    check-cast v2, Ljava/util/UUID;

    .restart local v2       #uuid:Ljava/util/UUID;
    goto :goto_0
.end method
