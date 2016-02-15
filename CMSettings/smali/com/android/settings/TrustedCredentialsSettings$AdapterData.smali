.class Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;
.super Ljava/lang/Object;
.source "TrustedCredentialsSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/flerovium/settings/TrustedCredentialsSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdapterData"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData$AliasLoader;
    }
.end annotation


# instance fields
.field private final mAdapter:Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

.field private final mCertHoldersByUserId:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/List",
            "<",
            "Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mTab:Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;

.field final synthetic this$0:Lorg/flerovium/settings/TrustedCredentialsSettings;


# direct methods
.method private constructor <init>(Lorg/flerovium/settings/TrustedCredentialsSettings;Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;)V
    .locals 1
    .param p2, "tab"    # Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;
    .param p3, "adapter"    # Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    .prologue
    .line 411
    iput-object p1, p0, Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;->this$0:Lorg/flerovium/settings/TrustedCredentialsSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 406
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    .line 412
    iput-object p3, p0, Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;->mAdapter:Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    .line 413
    iput-object p2, p0, Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;->mTab:Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;

    .line 414
    return-void
.end method

.method synthetic constructor <init>(Lorg/flerovium/settings/TrustedCredentialsSettings;Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;Lorg/flerovium/settings/TrustedCredentialsSettings$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/flerovium/settings/TrustedCredentialsSettings;
    .param p2, "x1"    # Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;
    .param p3, "x2"    # Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;
    .param p4, "x3"    # Lorg/flerovium/settings/TrustedCredentialsSettings$1;

    .prologue
    .line 405
    invoke-direct {p0, p1, p2, p3}, Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;-><init>(Lorg/flerovium/settings/TrustedCredentialsSettings;Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;)V

    return-void
.end method

.method static synthetic access$1200(Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;

    .prologue
    .line 405
    iget-object v0, p0, Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;)Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;
    .locals 1
    .param p0, "x0"    # Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;

    .prologue
    .line 405
    iget-object v0, p0, Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;->mTab:Lorg/flerovium/settings/TrustedCredentialsSettings$Tab;

    return-object v0
.end method

.method static synthetic access$1900(Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;)Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;
    .locals 1
    .param p0, "x0"    # Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;

    .prologue
    .line 405
    iget-object v0, p0, Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;->mAdapter:Lorg/flerovium/settings/TrustedCredentialsSettings$TrustedCertificateAdapterCommons;

    return-object v0
.end method


# virtual methods
.method public remove(Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;)V
    .locals 3
    .param p1, "certHolder"    # Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;

    .prologue
    .line 515
    iget-object v1, p0, Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    .line 516
    iget-object v1, p0, Lorg/flerovium/settings/TrustedCredentialsSettings$AdapterData;->mCertHoldersByUserId:Landroid/util/SparseArray;

    iget v2, p1, Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;->mProfileId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 517
    .local v0, "certs":Ljava/util/List;, "Ljava/util/List<Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;>;"
    if-eqz v0, :cond_0

    .line 518
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 521
    .end local v0    # "certs":Ljava/util/List;, "Ljava/util/List<Lorg/flerovium/settings/TrustedCredentialsSettings$CertHolder;>;"
    :cond_0
    return-void
.end method
