.class Lcom/alibaba/fastjson/serializer/Labels$DefaultLabelFilter;
.super Ljava/lang/Object;
.source "Labels.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/LabelFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/serializer/Labels;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultLabelFilter"
.end annotation


# instance fields
.field private excludes:[Ljava/lang/String;

.field private includes:[Ljava/lang/String;


# direct methods
.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "includes"    # [Ljava/lang/String;
    .param p2, "excludes"    # [Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    if-nez p1, :cond_0

    .line 36
    :goto_0
    if-nez p2, :cond_1

    .line 41
    :goto_1
    return-void

    .line 32
    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/Labels$DefaultLabelFilter;->includes:[Ljava/lang/String;

    .line 33
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/Labels$DefaultLabelFilter;->includes:[Ljava/lang/String;

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 34
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/Labels$DefaultLabelFilter;->includes:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    goto :goto_0

    .line 37
    :cond_1
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/alibaba/fastjson/serializer/Labels$DefaultLabelFilter;->excludes:[Ljava/lang/String;

    .line 38
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/Labels$DefaultLabelFilter;->excludes:[Ljava/lang/String;

    array-length v1, p2

    invoke-static {p2, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 39
    iget-object v0, p0, Lcom/alibaba/fastjson/serializer/Labels$DefaultLabelFilter;->excludes:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public apply(Ljava/lang/String;)Z
    .locals 4
    .param p1, "label"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 44
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/Labels$DefaultLabelFilter;->excludes:[Ljava/lang/String;

    if-nez v2, :cond_1

    .line 48
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/Labels$DefaultLabelFilter;->includes:[Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_0
    move v1, v0

    :cond_0
    return v1

    .line 45
    :cond_1
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/Labels$DefaultLabelFilter;->excludes:[Ljava/lang/String;

    invoke-static {v2, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    :goto_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 48
    :cond_3
    iget-object v2, p0, Lcom/alibaba/fastjson/serializer/Labels$DefaultLabelFilter;->includes:[Ljava/lang/String;

    .line 49
    invoke-static {v2, p1}, Ljava/util/Arrays;->binarySearch([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    if-gez v2, :cond_0

    goto :goto_0
.end method
