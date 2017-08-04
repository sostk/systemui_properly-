.class public Lcom/meizu/flyme/activeview/utils/IntentConverter;
.super Ljava/lang/Object;
.source "IntentConverter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static bundle2String(Landroid/os/Bundle;Z)Ljava/lang/String;
    .locals 9
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "justBundleType"    # Z

    .prologue
    const/16 v8, 0x44

    const/4 v5, 0x0

    const/4 v7, 0x0

    .line 36
    if-eqz p0, :cond_2

    const/4 v3, 0x0

    .line 40
    .local v3, "uri":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v3    # "uri":Ljava/lang/StringBuilder;
    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_3

    .line 84
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_1
    return-object v5

    .line 37
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    return-object v5

    .line 40
    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 41
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 42
    .local v4, "value":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 43
    .local v0, "entryType":C
    instance-of v6, v4, Ljava/lang/String;

    if-nez v6, :cond_4

    .line 45
    instance-of v6, v4, Ljava/lang/Boolean;

    if-nez v6, :cond_5

    .line 47
    instance-of v6, v4, Ljava/lang/Byte;

    if-nez v6, :cond_6

    .line 49
    instance-of v6, v4, Ljava/lang/Character;

    if-nez v6, :cond_7

    .line 51
    instance-of v6, v4, Ljava/lang/Double;

    if-nez v6, :cond_8

    .line 53
    instance-of v6, v4, Ljava/lang/Float;

    if-nez v6, :cond_9

    .line 55
    instance-of v6, v4, Ljava/lang/Integer;

    if-nez v6, :cond_a

    .line 57
    instance-of v6, v4, Ljava/lang/Long;

    if-nez v6, :cond_b

    .line 59
    instance-of v6, v4, Ljava/lang/Short;

    if-nez v6, :cond_c

    .line 61
    instance-of v6, v4, Landroid/os/Bundle;

    if-nez v6, :cond_d

    .line 65
    :goto_1
    if-eqz v0, :cond_0

    .line 66
    if-nez p1, :cond_e

    .line 69
    :goto_2
    if-eqz v3, :cond_f

    .line 72
    :goto_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 73
    const/16 v6, 0x2e

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 74
    invoke-static {v2}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    const/16 v6, 0x3d

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    if-eq v0, v8, :cond_10

    .line 79
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .end local v4    # "value":Ljava/lang/Object;
    :goto_4
    const/16 v6, 0x3b

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 44
    .restart local v4    # "value":Ljava/lang/Object;
    :cond_4
    const/16 v0, 0x53

    goto :goto_1

    .line 46
    :cond_5
    const/16 v0, 0x42

    goto :goto_1

    .line 48
    :cond_6
    const/16 v0, 0x62

    goto :goto_1

    .line 50
    :cond_7
    const/16 v0, 0x63

    goto :goto_1

    .line 52
    :cond_8
    const/16 v0, 0x64

    goto :goto_1

    .line 54
    :cond_9
    const/16 v0, 0x66

    goto :goto_1

    .line 56
    :cond_a
    const/16 v0, 0x69

    goto :goto_1

    .line 58
    :cond_b
    const/16 v0, 0x6c

    goto :goto_1

    .line 60
    :cond_c
    const/16 v0, 0x73

    goto :goto_1

    .line 62
    :cond_d
    const/16 v0, 0x44

    goto :goto_1

    .line 66
    :cond_e
    if-ne v0, v8, :cond_0

    goto :goto_2

    .line 70
    :cond_f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .local v3, "uri":Ljava/lang/StringBuilder;
    goto :goto_3

    .line 77
    .end local v3    # "uri":Ljava/lang/StringBuilder;
    :cond_10
    check-cast v4, Landroid/os/Bundle;

    .end local v4    # "value":Ljava/lang/Object;
    invoke-static {v4, v7}, Lcom/meizu/flyme/activeview/utils/IntentConverter;->bundle2String(Landroid/os/Bundle;Z)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4
.end method

.method public static intent2String(Landroid/content/Intent;)Ljava/lang/String;
    .locals 5
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 22
    if-eqz p0, :cond_0

    .line 25
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .local v0, "bundle":Landroid/os/Bundle;
    const/4 v3, 0x0

    .line 26
    invoke-virtual {p0, v3}, Landroid/content/Intent;->toUri(I)Ljava/lang/String;

    move-result-object v2

    .line 28
    .local v2, "intentString":Ljava/lang/String;
    const/4 v3, 0x1

    invoke-static {v0, v3}, Lcom/meizu/flyme/activeview/utils/IntentConverter;->bundle2String(Landroid/os/Bundle;Z)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "bundleString":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 32
    :goto_0
    return-object v2

    .line 23
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "bundleString":Ljava/lang/String;
    .end local v2    # "intentString":Ljava/lang/String;
    :cond_0
    return-object v3

    .line 30
    .restart local v0    # "bundle":Landroid/os/Bundle;
    .restart local v1    # "bundleString":Ljava/lang/String;
    .restart local v2    # "intentString":Ljava/lang/String;
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ";b_start;"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "b_end"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static parseUri(Ljava/lang/String;)Landroid/content/Intent;
    .locals 7
    .param p0, "uri"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/URISyntaxException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 94
    invoke-static {p0, v5}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    .local v3, "intent":Landroid/content/Intent;
    const-string/jumbo v5, ";b_start"

    .line 95
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .local v4, "start":I
    const-string/jumbo v5, ";b_end"

    .line 96
    invoke-virtual {p0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 98
    .local v2, "end":I
    if-gtz v4, :cond_1

    .line 105
    :cond_0
    :goto_0
    return-object v3

    .line 98
    :cond_1
    if-lez v2, :cond_0

    add-int/lit8 v5, v4, 0x8

    if-ge v5, v2, :cond_0

    .line 99
    add-int/lit8 v5, v4, 0x9

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 100
    .local v1, "bundleString":Ljava/lang/String;
    invoke-static {v1}, Lcom/meizu/flyme/activeview/utils/IntentConverter;->string2Bundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 101
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz v0, :cond_0

    .line 102
    invoke-virtual {v3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private static string2Bundle(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 10
    .param p0, "bundleString"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 114
    if-eqz p0, :cond_1

    .line 117
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, "b":Landroid/os/Bundle;
    const/4 v2, 0x0

    .line 119
    .local v2, "i":I
    :goto_0
    if-gez v2, :cond_2

    .line 146
    :cond_0
    return-object v0

    .line 115
    .end local v0    # "b":Landroid/os/Bundle;
    .end local v2    # "i":I
    :cond_1
    return-object v9

    .line 119
    .restart local v0    # "b":Landroid/os/Bundle;
    .restart local v2    # "i":I
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v2, v6, :cond_0

    const/16 v6, 0x3d

    .line 120
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .local v1, "eq":I
    const/16 v6, 0x3b

    .line 121
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 122
    .local v4, "semi":I
    if-gez v1, :cond_4

    .line 123
    :cond_3
    return-object v9

    .line 122
    :cond_4
    if-ltz v4, :cond_3

    .line 125
    if-le v1, v4, :cond_6

    .line 126
    :cond_5
    add-int/lit8 v2, v4, 0x1

    goto :goto_0

    .line 125
    :cond_6
    add-int/lit8 v6, v2, 0x1

    if-lt v1, v6, :cond_5

    .line 130
    add-int/lit8 v6, v1, 0x1

    invoke-virtual {p0, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 131
    .local v5, "value":Ljava/lang/String;
    add-int/lit8 v6, v2, 0x2

    invoke-virtual {p0, v6, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, "key":Ljava/lang/String;
    const-string/jumbo v6, "S."

    .line 133
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_7

    const-string/jumbo v6, "B."

    .line 134
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_8

    const-string/jumbo v6, "b."

    .line 135
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_9

    const-string/jumbo v6, "c."

    .line 136
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_a

    const-string/jumbo v6, "d."

    .line 137
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_b

    const-string/jumbo v6, "f."

    .line 138
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_c

    const-string/jumbo v6, "i."

    .line 139
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_d

    const-string/jumbo v6, "l."

    .line 140
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_e

    const-string/jumbo v6, "s."

    .line 141
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_f

    const-string/jumbo v6, "D."

    .line 142
    invoke-virtual {p0, v6, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v6

    if-nez v6, :cond_10

    .line 144
    :goto_1
    add-int/lit8 v2, v4, 0x1

    goto/16 :goto_0

    .line 133
    :cond_7
    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 134
    :cond_8
    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    goto :goto_1

    .line 135
    :cond_9
    invoke-static {v5}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v6

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putByte(Ljava/lang/String;B)V

    goto :goto_1

    .line 136
    :cond_a
    invoke-virtual {v5, v8}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putChar(Ljava/lang/String;C)V

    goto :goto_1

    .line 137
    :cond_b
    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_1

    .line 138
    :cond_c
    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    goto :goto_1

    .line 139
    :cond_d
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_1

    .line 140
    :cond_e
    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-virtual {v0, v3, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_1

    .line 141
    :cond_f
    invoke-static {v5}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v6

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putShort(Ljava/lang/String;S)V

    goto :goto_1

    .line 142
    :cond_10
    invoke-static {v5}, Lcom/meizu/flyme/activeview/utils/IntentConverter;->string2Bundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    invoke-virtual {v0, v3, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1
.end method
