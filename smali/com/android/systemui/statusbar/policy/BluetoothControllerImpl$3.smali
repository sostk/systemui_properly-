.class Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$3;
.super Ljava/lang/Object;
.source "BluetoothControllerImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->getPairedDevices()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .prologue
    .line 236
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$3;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;)I
    .locals 6
    .param p1, "lhs"    # Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;
    .param p2, "rhs"    # Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 239
    iget v1, p2, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->state:I

    sget v4, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_CONNECTED:I

    if-ne v1, v4, :cond_0

    move v1, v2

    :goto_0
    iget v4, p1, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->state:I

    sget v5, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_CONNECTED:I

    if-ne v4, v5, :cond_1

    move v4, v2

    :goto_1
    sub-int v0, v1, v4

    .line 240
    .local v0, "comparison":I
    if-eqz v0, :cond_2

    return v0

    .end local v0    # "comparison":I
    :cond_0
    move v1, v3

    .line 239
    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_1

    .line 242
    .restart local v0    # "comparison":I
    :cond_2
    iget v1, p2, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->state:I

    sget v4, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_CONNECTING:I

    if-ne v1, v4, :cond_3

    move v1, v2

    :goto_2
    iget v4, p1, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->state:I

    sget v5, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_CONNECTING:I

    if-ne v4, v5, :cond_4

    :goto_3
    sub-int v0, v1, v2

    .line 243
    if-eqz v0, :cond_5

    return v0

    :cond_3
    move v1, v3

    .line 242
    goto :goto_2

    :cond_4
    move v2, v3

    goto :goto_3

    .line 245
    :cond_5
    iget-object v1, p1, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->name:Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p2, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->name:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 246
    iget-object v1, p1, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->name:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    .line 247
    if-eqz v0, :cond_6

    return v0

    .line 250
    :cond_6
    iget-object v1, p1, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->id:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->id:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 238
    check-cast p1, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$3;->compare(Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;)I

    move-result v0

    return v0
.end method
