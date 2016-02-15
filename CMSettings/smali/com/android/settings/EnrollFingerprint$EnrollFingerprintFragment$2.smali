.class Lorg/flerovium/settings/EnrollFingerprint$EnrollFingerprintFragment$2;
.super Ljava/lang/Object;
.source "EnrollFingerprint.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/EnrollFingerprint$EnrollFingerprintFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/flerovium/settings/EnrollFingerprint$EnrollFingerprintFragment;


# direct methods
.method constructor <init>(Lorg/flerovium/settings/EnrollFingerprint$EnrollFingerprintFragment;)V
    .locals 0

    .prologue
    .line 535
    iput-object p1, p0, Lorg/flerovium/settings/EnrollFingerprint$EnrollFingerprintFragment$2;->this$0:Lorg/flerovium/settings/EnrollFingerprint$EnrollFingerprintFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 538
    iget-object v0, p0, Lorg/flerovium/settings/EnrollFingerprint$EnrollFingerprintFragment$2;->this$0:Lorg/flerovium/settings/EnrollFingerprint$EnrollFingerprintFragment;

    # invokes: Lorg/flerovium/settings/EnrollFingerprint$EnrollFingerprintFragment;->startEnrollmentStepTimeout()V
    invoke-static {v0}, Lorg/flerovium/settings/EnrollFingerprint$EnrollFingerprintFragment;->access$100(Lorg/flerovium/settings/EnrollFingerprint$EnrollFingerprintFragment;)V

    .line 539
    iget-object v0, p0, Lorg/flerovium/settings/EnrollFingerprint$EnrollFingerprintFragment$2;->this$0:Lorg/flerovium/settings/EnrollFingerprint$EnrollFingerprintFragment;

    sget-object v1, Lorg/flerovium/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;->EnrollmentError:Lorg/flerovium/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;

    invoke-virtual {v0, v1}, Lorg/flerovium/settings/EnrollFingerprint$EnrollFingerprintFragment;->updateStage(Lorg/flerovium/settings/EnrollFingerprint$EnrollFingerprintFragment$Stage;)V

    .line 540
    return-void
.end method
