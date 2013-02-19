.class public final Lcom/htc/protobuf/Descriptors$Descriptor;
.super Ljava/lang/Object;
.source "Descriptors.java"

# interfaces
.implements Lcom/htc/protobuf/Descriptors$GenericDescriptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/htc/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Descriptor"
.end annotation


# instance fields
.field private final containingType:Lcom/htc/protobuf/Descriptors$Descriptor;

.field private final enumTypes:[Lcom/htc/protobuf/Descriptors$EnumDescriptor;

.field private final extensions:[Lcom/htc/protobuf/Descriptors$FieldDescriptor;

.field private final fields:[Lcom/htc/protobuf/Descriptors$FieldDescriptor;

.field private final file:Lcom/htc/protobuf/Descriptors$FileDescriptor;

.field private final fullName:Ljava/lang/String;

.field private final index:I

.field private final nestedTypes:[Lcom/htc/protobuf/Descriptors$Descriptor;

.field private proto:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;


# direct methods
.method private constructor <init>(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$Descriptor;I)V
    .locals 8
    .parameter "proto"
    .parameter "file"
    .parameter "parent"
    .parameter "index"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .prologue
    .line 669
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 670
    iput p4, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->index:I

    .line 671
    iput-object p1, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    .line 672
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    #calls: Lcom/htc/protobuf/Descriptors;->computeFullName(Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$Descriptor;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p2, p3, v0}, Lcom/htc/protobuf/Descriptors;->access$1400(Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$Descriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->fullName:Ljava/lang/String;

    .line 673
    iput-object p2, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->file:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    .line 674
    iput-object p3, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->containingType:Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 676
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getNestedTypeCount()I

    move-result v0

    new-array v0, v0, [Lcom/htc/protobuf/Descriptors$Descriptor;

    iput-object v0, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->nestedTypes:[Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 677
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getNestedTypeCount()I

    move-result v0

    if-ge v4, v0, :cond_0

    .line 678
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->nestedTypes:[Lcom/htc/protobuf/Descriptors$Descriptor;

    new-instance v1, Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-virtual {p1, v4}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getNestedType(I)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v2

    invoke-direct {v1, v2, p2, p0, v4}, Lcom/htc/protobuf/Descriptors$Descriptor;-><init>(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$Descriptor;I)V

    aput-object v1, v0, v4

    .line 677
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 682
    :cond_0
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getEnumTypeCount()I

    move-result v0

    new-array v0, v0, [Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    iput-object v0, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->enumTypes:[Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    .line 683
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getEnumTypeCount()I

    move-result v0

    if-ge v4, v0, :cond_1

    .line 684
    iget-object v6, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->enumTypes:[Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    new-instance v0, Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    invoke-virtual {p1, v4}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getEnumType(I)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v1

    const/4 v5, 0x0

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v5}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;-><init>(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$Descriptor;ILcom/htc/protobuf/Descriptors$1;)V

    aput-object v0, v6, v4

    .line 683
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 688
    :cond_1
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getFieldCount()I

    move-result v0

    new-array v0, v0, [Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    iput-object v0, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->fields:[Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    .line 689
    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getFieldCount()I

    move-result v0

    if-ge v4, v0, :cond_2

    .line 690
    iget-object v7, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->fields:[Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    new-instance v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1, v4}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getField(I)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;-><init>(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$Descriptor;IZLcom/htc/protobuf/Descriptors$1;)V

    aput-object v0, v7, v4

    .line 689
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 694
    :cond_2
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getExtensionCount()I

    move-result v0

    new-array v0, v0, [Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    iput-object v0, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->extensions:[Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    .line 695
    const/4 v4, 0x0

    :goto_3
    invoke-virtual {p1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getExtensionCount()I

    move-result v0

    if-ge v4, v0, :cond_3

    .line 696
    iget-object v7, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->extensions:[Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    new-instance v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    invoke-virtual {p1, v4}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getExtension(I)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v2, p2

    move-object v3, p0

    invoke-direct/range {v0 .. v6}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;-><init>(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$Descriptor;IZLcom/htc/protobuf/Descriptors$1;)V

    aput-object v0, v7, v4

    .line 695
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 700
    :cond_3
    #getter for: Lcom/htc/protobuf/Descriptors$FileDescriptor;->pool:Lcom/htc/protobuf/Descriptors$DescriptorPool;
    invoke-static {p2}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/htc/protobuf/Descriptors$DescriptorPool;->addSymbol(Lcom/htc/protobuf/Descriptors$GenericDescriptor;)V

    .line 701
    return-void
.end method

.method synthetic constructor <init>(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$Descriptor;ILcom/htc/protobuf/Descriptors$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .prologue
    .line 465
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/htc/protobuf/Descriptors$Descriptor;-><init>(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;Lcom/htc/protobuf/Descriptors$FileDescriptor;Lcom/htc/protobuf/Descriptors$Descriptor;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/htc/protobuf/Descriptors$Descriptor;)V
    .locals 0
    .parameter "x0"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .prologue
    .line 465
    invoke-direct {p0}, Lcom/htc/protobuf/Descriptors$Descriptor;->crossLink()V

    return-void
.end method

.method static synthetic access$800(Lcom/htc/protobuf/Descriptors$Descriptor;Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 465
    invoke-direct {p0, p1}, Lcom/htc/protobuf/Descriptors$Descriptor;->setProto(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)V

    return-void
.end method

.method private crossLink()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/htc/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .prologue
    .line 705
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->nestedTypes:[Lcom/htc/protobuf/Descriptors$Descriptor;

    .local v0, arr$:[Lcom/htc/protobuf/Descriptors$Descriptor;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 706
    .local v5, nestedType:Lcom/htc/protobuf/Descriptors$Descriptor;
    invoke-direct {v5}, Lcom/htc/protobuf/Descriptors$Descriptor;->crossLink()V

    .line 705
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 709
    .end local v5           #nestedType:Lcom/htc/protobuf/Descriptors$Descriptor;
    :cond_0
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->fields:[Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    .local v0, arr$:[Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    array-length v4, v0

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v2, v0, v3

    .line 710
    .local v2, field:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    #calls: Lcom/htc/protobuf/Descriptors$FieldDescriptor;->crossLink()V
    invoke-static {v2}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->access$700(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V

    .line 709
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 713
    .end local v2           #field:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    :cond_1
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->extensions:[Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    array-length v4, v0

    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_2

    aget-object v1, v0, v3

    .line 714
    .local v1, extension:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    #calls: Lcom/htc/protobuf/Descriptors$FieldDescriptor;->crossLink()V
    invoke-static {v1}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->access$700(Lcom/htc/protobuf/Descriptors$FieldDescriptor;)V

    .line 713
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 716
    .end local v1           #extension:Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    :cond_2
    return-void
.end method

.method private setProto(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)V
    .locals 3
    .parameter "proto"

    .prologue
    .line 720
    iput-object p1, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    .line 722
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->nestedTypes:[Lcom/htc/protobuf/Descriptors$Descriptor;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 723
    iget-object v1, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->nestedTypes:[Lcom/htc/protobuf/Descriptors$Descriptor;

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getNestedType(I)Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/htc/protobuf/Descriptors$Descriptor;->setProto(Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;)V

    .line 722
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 726
    :cond_0
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->enumTypes:[Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 727
    iget-object v1, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->enumTypes:[Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getEnumType(I)Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;

    move-result-object v2

    #calls: Lcom/htc/protobuf/Descriptors$EnumDescriptor;->setProto(Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)V
    invoke-static {v1, v2}, Lcom/htc/protobuf/Descriptors$EnumDescriptor;->access$900(Lcom/htc/protobuf/Descriptors$EnumDescriptor;Lcom/htc/protobuf/DescriptorProtos$EnumDescriptorProto;)V

    .line 726
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 730
    :cond_1
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->fields:[Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 731
    iget-object v1, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->fields:[Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getField(I)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v2

    #calls: Lcom/htc/protobuf/Descriptors$FieldDescriptor;->setProto(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)V
    invoke-static {v1, v2}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->access$1100(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)V

    .line 730
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 734
    :cond_2
    const/4 v0, 0x0

    :goto_3
    iget-object v1, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->extensions:[Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    .line 735
    iget-object v1, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->extensions:[Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    aget-object v1, v1, v0

    invoke-virtual {p1, v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getExtension(I)Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;

    move-result-object v2

    #calls: Lcom/htc/protobuf/Descriptors$FieldDescriptor;->setProto(Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)V
    invoke-static {v1, v2}, Lcom/htc/protobuf/Descriptors$FieldDescriptor;->access$1100(Lcom/htc/protobuf/Descriptors$FieldDescriptor;Lcom/htc/protobuf/DescriptorProtos$FieldDescriptorProto;)V

    .line 734
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 737
    :cond_3
    return-void
.end method


# virtual methods
.method public findEnumTypeByName(Ljava/lang/String;)Lcom/htc/protobuf/Descriptors$EnumDescriptor;
    .locals 4
    .parameter "name"

    .prologue
    .line 646
    iget-object v1, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->file:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    #getter for: Lcom/htc/protobuf/Descriptors$FileDescriptor;->pool:Lcom/htc/protobuf/Descriptors$DescriptorPool;
    invoke-static {v1}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$DescriptorPool;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->fullName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/htc/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    .line 648
    .local v0, result:Lcom/htc/protobuf/Descriptors$GenericDescriptor;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    if-eqz v1, :cond_0

    .line 649
    check-cast v0, Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    .line 651
    .end local v0           #result:Lcom/htc/protobuf/Descriptors$GenericDescriptor;
    :goto_0
    return-object v0

    .restart local v0       #result:Lcom/htc/protobuf/Descriptors$GenericDescriptor;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findFieldByName(Ljava/lang/String;)Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    .locals 4
    .parameter "name"

    .prologue
    .line 594
    iget-object v1, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->file:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    #getter for: Lcom/htc/protobuf/Descriptors$FileDescriptor;->pool:Lcom/htc/protobuf/Descriptors$DescriptorPool;
    invoke-static {v1}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$DescriptorPool;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->fullName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/htc/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    .line 596
    .local v0, result:Lcom/htc/protobuf/Descriptors$GenericDescriptor;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    if-eqz v1, :cond_0

    .line 597
    check-cast v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    .line 599
    .end local v0           #result:Lcom/htc/protobuf/Descriptors$GenericDescriptor;
    :goto_0
    return-object v0

    .restart local v0       #result:Lcom/htc/protobuf/Descriptors$GenericDescriptor;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public findFieldByNumber(I)Lcom/htc/protobuf/Descriptors$FieldDescriptor;
    .locals 2
    .parameter "number"

    .prologue
    .line 613
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->file:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    #getter for: Lcom/htc/protobuf/Descriptors$FileDescriptor;->pool:Lcom/htc/protobuf/Descriptors$DescriptorPool;
    invoke-static {v0}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$DescriptorPool;

    move-result-object v0

    #getter for: Lcom/htc/protobuf/Descriptors$DescriptorPool;->fieldsByNumber:Ljava/util/Map;
    invoke-static {v0}, Lcom/htc/protobuf/Descriptors$DescriptorPool;->access$1300(Lcom/htc/protobuf/Descriptors$DescriptorPool;)Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lcom/htc/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;

    invoke-direct {v1, p0, p1}, Lcom/htc/protobuf/Descriptors$DescriptorPool$DescriptorIntPair;-><init>(Lcom/htc/protobuf/Descriptors$GenericDescriptor;I)V

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    return-object v0
.end method

.method public findNestedTypeByName(Ljava/lang/String;)Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 4
    .parameter "name"

    .prologue
    .line 627
    iget-object v1, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->file:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    #getter for: Lcom/htc/protobuf/Descriptors$FileDescriptor;->pool:Lcom/htc/protobuf/Descriptors$DescriptorPool;
    invoke-static {v1}, Lcom/htc/protobuf/Descriptors$FileDescriptor;->access$1200(Lcom/htc/protobuf/Descriptors$FileDescriptor;)Lcom/htc/protobuf/Descriptors$DescriptorPool;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->fullName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/htc/protobuf/Descriptors$DescriptorPool;->findSymbol(Ljava/lang/String;)Lcom/htc/protobuf/Descriptors$GenericDescriptor;

    move-result-object v0

    .line 629
    .local v0, result:Lcom/htc/protobuf/Descriptors$GenericDescriptor;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    if-eqz v1, :cond_0

    .line 630
    check-cast v0, Lcom/htc/protobuf/Descriptors$Descriptor;

    .line 632
    .end local v0           #result:Lcom/htc/protobuf/Descriptors$GenericDescriptor;
    :goto_0
    return-object v0

    .restart local v0       #result:Lcom/htc/protobuf/Descriptors$GenericDescriptor;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContainingType()Lcom/htc/protobuf/Descriptors$Descriptor;
    .locals 1

    .prologue
    .line 528
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->containingType:Lcom/htc/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getEnumTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/Descriptors$EnumDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 566
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->enumTypes:[Lcom/htc/protobuf/Descriptors$EnumDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtensions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 552
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->extensions:[Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 543
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->fields:[Lcom/htc/protobuf/Descriptors$FieldDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFile()Lcom/htc/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .prologue
    .line 521
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->file:Lcom/htc/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 514
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .prologue
    .line 483
    iget v0, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 497
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNestedTypes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/htc/protobuf/Descriptors$Descriptor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 561
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->nestedTypes:[Lcom/htc/protobuf/Descriptors$Descriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;
    .locals 1

    .prologue
    .line 535
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v0}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getOptions()Lcom/htc/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    return-object v0
.end method

.method public isExtensionNumber(I)Z
    .locals 3
    .parameter "number"

    .prologue
    .line 576
    iget-object v2, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    invoke-virtual {v2}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;->getExtensionRangeList()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;

    .line 577
    .local v1, range:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->getStart()I

    move-result v2

    if-gt v2, p1, :cond_0

    invoke-virtual {v1}, Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;->getEnd()I

    move-result v2

    if-ge p1, v2, :cond_0

    .line 578
    const/4 v2, 0x1

    .line 581
    .end local v1           #range:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto$ExtensionRange;
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public toProto()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/htc/protobuf/Descriptors$Descriptor;->proto:Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    return-object v0
.end method

.method public bridge synthetic toProto()Lcom/htc/protobuf/Message;
    .locals 1

    .prologue
    .line 465
    invoke-virtual {p0}, Lcom/htc/protobuf/Descriptors$Descriptor;->toProto()Lcom/htc/protobuf/DescriptorProtos$DescriptorProto;

    move-result-object v0

    return-object v0
.end method
