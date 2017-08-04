.class Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$2;
.super Ljava/lang/Object;
.source "BluetoothControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .prologue
    .line 892
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 895
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$2;->this$0:Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->-wrap5(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;Lcom/android/systemui/statusbar/policy/BluetoothController$Device;)V

    .line 894
    return-void
.end method
