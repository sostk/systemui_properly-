.class Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl$2;
.super Ljava/lang/Object;
.source "NfcControllerImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;->setNfcEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;

.field final synthetic val$adapter:Landroid/nfc/NfcAdapter;

.field final synthetic val$enabled:Z


# direct methods
.method constructor <init>(Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;ZLandroid/nfc/NfcAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;
    .param p2, "val$enabled"    # Z
    .param p3, "val$adapter"    # Landroid/nfc/NfcAdapter;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl$2;->this$0:Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl;

    iput-boolean p2, p0, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl$2;->val$enabled:Z

    iput-object p3, p0, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl$2;->val$adapter:Landroid/nfc/NfcAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 92
    iget-boolean v0, p0, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl$2;->val$enabled:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl$2;->val$adapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    .line 91
    :goto_0
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/flyme/systemui/statusbar/policy/NfcControllerImpl$2;->val$adapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    goto :goto_0
.end method
