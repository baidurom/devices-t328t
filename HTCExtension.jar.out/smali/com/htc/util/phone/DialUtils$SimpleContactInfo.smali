.class public Lcom/htc/util/phone/DialUtils$SimpleContactInfo;
.super Ljava/lang/Object;
.source "DialUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/util/phone/DialUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SimpleContactInfo"
.end annotation


# static fields
.field public static final HAS_PHOTO:Ljava/lang/String; = "hasPhoto"

.field public static final LOOKUP:Ljava/lang/String; = "lookup"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final NUMBER:Ljava/lang/String; = "number"

.field public static final NUMBER_TYPE:Ljava/lang/String; = "numberType"

.field public static final PERSON_ID:Ljava/lang/String; = "personId"

.field public static final PERSON_LOOKUP_KEY:Ljava/lang/String; = "personLookupKey"

.field public static final RAW_CONTACT_ID:Ljava/lang/String; = "raw_contact_id"

.field public static final RECORD_NUMBER:Ljava/lang/String; = "recordNumber"


# instance fields
.field public bHasPhoto:Z

.field public lookup:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public number:Ljava/lang/String;

.field public numberType:I

.field public personId:J

.field public personIdString:Ljava/lang/String;

.field public raw_contact_id:J

.field public recordNumber:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 687
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 689
    return-void
.end method


# virtual methods
.method public getLookup()Ljava/lang/String;
    .locals 1

    .prologue
    .line 555
    iget-object v0, p0, Lcom/htc/util/phone/DialUtils$SimpleContactInfo;->lookup:Ljava/lang/String;

    return-object v0
.end method

.method public getPersonIdString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/htc/util/phone/DialUtils$SimpleContactInfo;->personIdString:Ljava/lang/String;

    return-object v0
.end method

.method public getRawContactId()J
    .locals 2

    .prologue
    .line 530
    iget-wide v0, p0, Lcom/htc/util/phone/DialUtils$SimpleContactInfo;->raw_contact_id:J

    return-wide v0
.end method

.method public getRecordNumber()J
    .locals 2

    .prologue
    .line 500
    iget-wide v0, p0, Lcom/htc/util/phone/DialUtils$SimpleContactInfo;->recordNumber:J

    return-wide v0
.end method

.method public setLookup(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 563
    iput-object p1, p0, Lcom/htc/util/phone/DialUtils$SimpleContactInfo;->lookup:Ljava/lang/String;

    .line 564
    return-void
.end method

.method public setPersonIdString(J)V
    .locals 0
    .parameter "val"

    .prologue
    .line 504
    iput-wide p1, p0, Lcom/htc/util/phone/DialUtils$SimpleContactInfo;->recordNumber:J

    .line 505
    return-void
.end method

.method public setPersonIdString(Ljava/lang/String;)V
    .locals 0
    .parameter "val"

    .prologue
    .line 464
    iput-object p1, p0, Lcom/htc/util/phone/DialUtils$SimpleContactInfo;->personIdString:Ljava/lang/String;

    .line 465
    return-void
.end method

.method public setRawContactId(J)V
    .locals 0
    .parameter "val"

    .prologue
    .line 538
    iput-wide p1, p0, Lcom/htc/util/phone/DialUtils$SimpleContactInfo;->raw_contact_id:J

    .line 539
    return-void
.end method
