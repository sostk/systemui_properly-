.class Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$4;
.super Ljava/lang/Object;
.source "BluetoothControllerImpl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->getDiscoveredDevices()Ljava/util/Set;
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
        "Lcom/android/systemui/statusbar/policy/BluetoothController$Device;",
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
    .line 848
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$4;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/systemui/statusbar/policy/BluetoothController$Device;Lcom/android/systemui/statusbar/policy/BluetoothController$Device;)I
    .locals 3
    .param p1, "lhs"    # Lcom/android/systemui/statusbar/policy/BluetoothController$Device;
    .param p2, "rhs"    # Lcom/android/systemui/statusbar/policy/BluetoothController$Device;

    .prologue
    .line 851
    iget-short v1, p2, Lcom/android/systemui/statusbar/policy/BluetoothController$Device;->rssi:S

    iget-short v2, p1, Lcom/android/systemui/statusbar/policy/BluetoothController$Device;->rssi:S

    invoke-static {v1, v2}, Ljava/lang/Short;->compare(SS)I

    move-result v0

    .line 852
    .local v0, "score":I
    if-eqz v0, :cond_0

    .end local v0    # "score":I
    :goto_0
    return v0

    .restart local v0    # "score":I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    .prologue
    .line 850
    check-cast p1, Lcom/android/systemui/statusbar/policy/BluetoothController$Device;

    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/android/systemui/statusbar/policy/BluetoothController$Device;

    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$4;->compare(Lcom/android/systemui/statusbar/policy/BluetoothController$Device;Lcom/android/systemui/statusbar/policy/BluetoothController$Device;)I

    move-result v0

    return v0
.end method
