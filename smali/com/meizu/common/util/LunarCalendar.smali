.class public Lcom/meizu/common/util/LunarCalendar;
.super Ljava/lang/Object;
.source "LunarCalendar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/util/LunarCalendar$DateParser;
    }
.end annotation


# static fields
.field private static final DATE_PATTERN:Ljava/util/regex/Pattern;

.field public static final DATE_SEPARATOR:Ljava/lang/String; = "-"

.field private static final DAYS_BEFORE_MONTH:[I

.field public static final LUNAR_DATE_REGEXP:Ljava/lang/String; = "(19|20)[0-9]{2}-((0)?[1-9]|1[012])-((0)?[1-9]|(1|2)[0-9]|30)$"

.field private static final LUNAR_INFO:[I

.field public static final MAX_YEAR:I = 0x833

.field public static final MIN_YEAR:I = 0x76b

.field private static final TZ_UTC:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0xd

    .line 29
    new-array v0, v0, [I

    aput v3, v0, v3

    const/16 v1, 0x1f

    aput v1, v0, v4

    const/16 v1, 0x3b

    aput v1, v0, v5

    const/16 v1, 0x5a

    aput v1, v0, v6

    const/16 v1, 0x78

    aput v1, v0, v7

    const/4 v1, 0x5

    const/16 v2, 0x97

    aput v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0xb5

    aput v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0xd4

    aput v2, v0, v1

    const/16 v1, 0x8

    const/16 v2, 0xf3

    aput v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0x111

    aput v2, v0, v1

    const/16 v1, 0xa

    const/16 v2, 0x130

    aput v2, v0, v1

    const/16 v1, 0xb

    const/16 v2, 0x14e

    aput v2, v0, v1

    const/16 v1, 0xc

    const/16 v2, 0x16d

    aput v2, v0, v1

    sput-object v0, Lcom/meizu/common/util/LunarCalendar;->DAYS_BEFORE_MONTH:[I

    const-string/jumbo v0, "UTC"

    .line 32
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/util/LunarCalendar;->TZ_UTC:Ljava/util/TimeZone;

    const/16 v0, 0xc9

    .line 44
    new-array v0, v0, [I

    const v1, 0xab54a

    aput v1, v0, v3

    const v1, 0x84b6bf

    aput v1, v0, v4

    const v1, 0x4ae53

    aput v1, v0, v5

    const v1, 0xa5748

    aput v1, v0, v6

    const v1, 0x5526bd

    aput v1, v0, v7

    const/4 v1, 0x5

    const v2, 0xd2650

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, 0xd9544

    aput v2, v0, v1

    const/4 v1, 0x7

    const v2, 0x46aab9

    aput v2, v0, v1

    const/16 v1, 0x8

    const v2, 0x56a4d

    aput v2, v0, v1

    const/16 v1, 0x9

    const v2, 0x9ad42

    aput v2, v0, v1

    const/16 v1, 0xa

    const v2, 0x24aeb6

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x4ae4a

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0x6a4dbe

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0xa4d52

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, 0xd2546

    aput v2, v0, v1

    const/16 v1, 0xf

    const v2, 0x5d52ba

    aput v2, v0, v1

    const/16 v1, 0x10

    const v2, 0xb544e

    aput v2, v0, v1

    const/16 v1, 0x11

    const v2, 0xd6a43

    aput v2, v0, v1

    const/16 v1, 0x12

    const v2, 0x296d37

    aput v2, v0, v1

    const/16 v1, 0x13

    const v2, 0x95b4b

    aput v2, v0, v1

    const/16 v1, 0x14

    const v2, 0x749bc1

    aput v2, v0, v1

    const/16 v1, 0x15

    const v2, 0x49754

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0xa4b48

    aput v2, v0, v1

    const/16 v1, 0x17

    const v2, 0x5b25bc

    aput v2, v0, v1

    const/16 v1, 0x18

    const v2, 0x6a550

    aput v2, v0, v1

    const/16 v1, 0x19

    const v2, 0x6d445

    aput v2, v0, v1

    const/16 v1, 0x1a

    const v2, 0x4adab8

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x2b64d

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x95742

    aput v2, v0, v1

    const/16 v1, 0x1d

    const v2, 0x2497b7

    aput v2, v0, v1

    const/16 v1, 0x1e

    const v2, 0x4974a

    aput v2, v0, v1

    const/16 v1, 0x1f

    const v2, 0x664b3e

    aput v2, v0, v1

    const/16 v1, 0x20

    const v2, 0xd4a51

    aput v2, v0, v1

    const/16 v1, 0x21

    const v2, 0xea546

    aput v2, v0, v1

    const/16 v1, 0x22

    const v2, 0x56d4ba

    aput v2, v0, v1

    const/16 v1, 0x23

    const v2, 0x5ad4e

    aput v2, v0, v1

    const/16 v1, 0x24

    const v2, 0x2b644

    aput v2, v0, v1

    const/16 v1, 0x25

    const v2, 0x393738

    aput v2, v0, v1

    const/16 v1, 0x26

    const v2, 0x92e4b

    aput v2, v0, v1

    const/16 v1, 0x27

    const v2, 0x7c96bf

    aput v2, v0, v1

    const/16 v1, 0x28

    const v2, 0xc9553

    aput v2, v0, v1

    const/16 v1, 0x29

    const v2, 0xd4a48

    aput v2, v0, v1

    const/16 v1, 0x2a

    const v2, 0x6da53b

    aput v2, v0, v1

    const/16 v1, 0x2b

    const v2, 0xb554f

    aput v2, v0, v1

    const/16 v1, 0x2c

    const v2, 0x56a45

    aput v2, v0, v1

    const/16 v1, 0x2d

    const v2, 0x4aadb9

    aput v2, v0, v1

    const/16 v1, 0x2e

    const v2, 0x25d4d

    aput v2, v0, v1

    const/16 v1, 0x2f

    const v2, 0x92d42

    aput v2, v0, v1

    const/16 v1, 0x30

    const v2, 0x2c95b6

    aput v2, v0, v1

    const/16 v1, 0x31

    const v2, 0xa954a

    aput v2, v0, v1

    const/16 v1, 0x32

    const v2, 0x7b4abd

    aput v2, v0, v1

    const/16 v1, 0x33

    const v2, 0x6ca51

    aput v2, v0, v1

    const/16 v1, 0x34

    const v2, 0xb5546

    aput v2, v0, v1

    const/16 v1, 0x35

    const v2, 0x555abb

    aput v2, v0, v1

    const/16 v1, 0x36

    const v2, 0x4da4e

    aput v2, v0, v1

    const/16 v1, 0x37

    const v2, 0xa5b43

    aput v2, v0, v1

    const/16 v1, 0x38

    const v2, 0x352bb8

    aput v2, v0, v1

    const/16 v1, 0x39

    const v2, 0x52b4c

    aput v2, v0, v1

    const/16 v1, 0x3a

    const v2, 0x8a953f

    aput v2, v0, v1

    const/16 v1, 0x3b

    const v2, 0xe9552

    aput v2, v0, v1

    const/16 v1, 0x3c

    const v2, 0x6aa48

    aput v2, v0, v1

    const/16 v1, 0x3d

    const v2, 0x6ad53c

    aput v2, v0, v1

    const/16 v1, 0x3e

    const v2, 0xab54f

    aput v2, v0, v1

    const/16 v1, 0x3f

    const v2, 0x4b645

    aput v2, v0, v1

    const/16 v1, 0x40

    const v2, 0x4a5739

    aput v2, v0, v1

    const/16 v1, 0x41

    const v2, 0xa574d

    aput v2, v0, v1

    const/16 v1, 0x42

    const v2, 0x52642

    aput v2, v0, v1

    const/16 v1, 0x43

    const v2, 0x3e9335

    aput v2, v0, v1

    const/16 v1, 0x44

    const v2, 0xd9549

    aput v2, v0, v1

    const/16 v1, 0x45

    const v2, 0x75aabe

    aput v2, v0, v1

    const/16 v1, 0x46

    const v2, 0x56a51

    aput v2, v0, v1

    const/16 v1, 0x47

    const v2, 0x96d46

    aput v2, v0, v1

    const/16 v1, 0x48

    const v2, 0x54aebb

    aput v2, v0, v1

    const/16 v1, 0x49

    const v2, 0x4ad4f

    aput v2, v0, v1

    const/16 v1, 0x4a

    const v2, 0xa4d43

    aput v2, v0, v1

    const/16 v1, 0x4b

    const v2, 0x4d26b7

    aput v2, v0, v1

    const/16 v1, 0x4c

    const v2, 0xd254b

    aput v2, v0, v1

    const/16 v1, 0x4d

    const v2, 0x8d52bf

    aput v2, v0, v1

    const/16 v1, 0x4e

    const v2, 0xb5452

    aput v2, v0, v1

    const/16 v1, 0x4f

    const v2, 0xb6a47

    aput v2, v0, v1

    const/16 v1, 0x50

    const v2, 0x696d3c

    aput v2, v0, v1

    const/16 v1, 0x51

    const v2, 0x95b50

    aput v2, v0, v1

    const/16 v1, 0x52

    const v2, 0x49b45

    aput v2, v0, v1

    const/16 v1, 0x53

    const v2, 0x4a4bb9

    aput v2, v0, v1

    const/16 v1, 0x54

    const v2, 0xa4b4d

    aput v2, v0, v1

    const/16 v1, 0x55

    const v2, 0xab25c2

    aput v2, v0, v1

    const/16 v1, 0x56

    const v2, 0x6a554

    aput v2, v0, v1

    const/16 v1, 0x57

    const v2, 0x6d449

    aput v2, v0, v1

    const/16 v1, 0x58

    const v2, 0x6ada3d

    aput v2, v0, v1

    const/16 v1, 0x59

    const v2, 0xab651

    aput v2, v0, v1

    const/16 v1, 0x5a

    const v2, 0x95746

    aput v2, v0, v1

    const/16 v1, 0x5b

    const v2, 0x5497bb

    aput v2, v0, v1

    const/16 v1, 0x5c

    const v2, 0x4974f

    aput v2, v0, v1

    const/16 v1, 0x5d

    const v2, 0x64b44

    aput v2, v0, v1

    const/16 v1, 0x5e

    const v2, 0x36a537

    aput v2, v0, v1

    const/16 v1, 0x5f

    const v2, 0xea54a

    aput v2, v0, v1

    const/16 v1, 0x60

    const v2, 0x86b2bf

    aput v2, v0, v1

    const/16 v1, 0x61

    const v2, 0x5ac53

    aput v2, v0, v1

    const/16 v1, 0x62

    const v2, 0xab647

    aput v2, v0, v1

    const/16 v1, 0x63

    const v2, 0x5936bc

    aput v2, v0, v1

    const/16 v1, 0x64

    const v2, 0x92e50

    aput v2, v0, v1

    const/16 v1, 0x65

    const v2, 0xc9645

    aput v2, v0, v1

    const/16 v1, 0x66

    const v2, 0x4d4ab8

    aput v2, v0, v1

    const/16 v1, 0x67

    const v2, 0xd4a4c

    aput v2, v0, v1

    const/16 v1, 0x68

    const v2, 0xda541

    aput v2, v0, v1

    const/16 v1, 0x69

    const v2, 0x25aab6

    aput v2, v0, v1

    const/16 v1, 0x6a

    const v2, 0x56a49

    aput v2, v0, v1

    const/16 v1, 0x6b

    const v2, 0x7aadbd

    aput v2, v0, v1

    const/16 v1, 0x6c

    const v2, 0x25d52

    aput v2, v0, v1

    const/16 v1, 0x6d

    const v2, 0x92d47

    aput v2, v0, v1

    const/16 v1, 0x6e

    const v2, 0x5c95ba

    aput v2, v0, v1

    const/16 v1, 0x6f

    const v2, 0xa954e

    aput v2, v0, v1

    const/16 v1, 0x70

    const v2, 0xb4a43

    aput v2, v0, v1

    const/16 v1, 0x71

    const v2, 0x4b5537

    aput v2, v0, v1

    const/16 v1, 0x72

    const v2, 0xad54a

    aput v2, v0, v1

    const/16 v1, 0x73

    const v2, 0x955abf

    aput v2, v0, v1

    const/16 v1, 0x74

    const v2, 0x4ba53

    aput v2, v0, v1

    const/16 v1, 0x75

    const v2, 0xa5b48

    aput v2, v0, v1

    const/16 v1, 0x76

    const v2, 0x652bbc

    aput v2, v0, v1

    const/16 v1, 0x77

    const v2, 0x52b50

    aput v2, v0, v1

    const/16 v1, 0x78

    const v2, 0xa9345

    aput v2, v0, v1

    const/16 v1, 0x79

    const v2, 0x474ab9

    aput v2, v0, v1

    const/16 v1, 0x7a

    const v2, 0x6aa4c

    aput v2, v0, v1

    const/16 v1, 0x7b

    const v2, 0xad541

    aput v2, v0, v1

    const/16 v1, 0x7c

    const v2, 0x24dab6

    aput v2, v0, v1

    const/16 v1, 0x7d

    const v2, 0x4b64a

    aput v2, v0, v1

    const/16 v1, 0x7e

    const v2, 0x6a573d

    aput v2, v0, v1

    const/16 v1, 0x7f

    const v2, 0xa4e51

    aput v2, v0, v1

    const/16 v1, 0x80

    const v2, 0xd2646

    aput v2, v0, v1

    const/16 v1, 0x81

    const v2, 0x5e933a

    aput v2, v0, v1

    const/16 v1, 0x82

    const v2, 0xd534d

    aput v2, v0, v1

    const/16 v1, 0x83

    const v2, 0x5aa43

    aput v2, v0, v1

    const/16 v1, 0x84

    const v2, 0x36b537

    aput v2, v0, v1

    const/16 v1, 0x85

    const v2, 0x96d4b

    aput v2, v0, v1

    const/16 v1, 0x86

    const v2, 0xb4aebf

    aput v2, v0, v1

    const/16 v1, 0x87

    const v2, 0x4ad53

    aput v2, v0, v1

    const/16 v1, 0x88

    const v2, 0xa4d48

    aput v2, v0, v1

    const/16 v1, 0x89

    const v2, 0x6d25bc

    aput v2, v0, v1

    const/16 v1, 0x8a

    const v2, 0xd254f

    aput v2, v0, v1

    const/16 v1, 0x8b

    const v2, 0xd5244

    aput v2, v0, v1

    const/16 v1, 0x8c

    const v2, 0x5daa38

    aput v2, v0, v1

    const/16 v1, 0x8d

    const v2, 0xb5a4c

    aput v2, v0, v1

    const/16 v1, 0x8e

    const v2, 0x56d41

    aput v2, v0, v1

    const/16 v1, 0x8f

    const v2, 0x24adb6

    aput v2, v0, v1

    const/16 v1, 0x90

    const v2, 0x49b4a

    aput v2, v0, v1

    const/16 v1, 0x91

    const v2, 0x7a4bbe

    aput v2, v0, v1

    const/16 v1, 0x92

    const v2, 0xa4b51

    aput v2, v0, v1

    const/16 v1, 0x93

    const v2, 0xaa546

    aput v2, v0, v1

    const/16 v1, 0x94

    const v2, 0x5b52ba

    aput v2, v0, v1

    const/16 v1, 0x95

    const v2, 0x6d24e

    aput v2, v0, v1

    const/16 v1, 0x96

    const v2, 0xada42

    aput v2, v0, v1

    const/16 v1, 0x97

    const v2, 0x355b37    # 4.900003E-39f

    aput v2, v0, v1

    const/16 v1, 0x98

    const v2, 0x9374b

    aput v2, v0, v1

    const/16 v1, 0x99

    const v2, 0x8497c1

    aput v2, v0, v1

    const/16 v1, 0x9a

    const v2, 0x49753

    aput v2, v0, v1

    const/16 v1, 0x9b

    const v2, 0x64b48

    aput v2, v0, v1

    const/16 v1, 0x9c

    const v2, 0x66a53c

    aput v2, v0, v1

    const/16 v1, 0x9d

    const v2, 0xea54f

    aput v2, v0, v1

    const/16 v1, 0x9e

    const v2, 0x6aa44

    aput v2, v0, v1

    const/16 v1, 0x9f

    const v2, 0x4ab638

    aput v2, v0, v1

    const/16 v1, 0xa0

    const v2, 0xaae4c

    aput v2, v0, v1

    const/16 v1, 0xa1

    const v2, 0x92e42

    aput v2, v0, v1

    const/16 v1, 0xa2

    const v2, 0x3c9735

    aput v2, v0, v1

    const/16 v1, 0xa3

    const v2, 0xc9649

    aput v2, v0, v1

    const/16 v1, 0xa4

    const v2, 0x7d4abd

    aput v2, v0, v1

    const/16 v1, 0xa5

    const v2, 0xd4a51

    aput v2, v0, v1

    const/16 v1, 0xa6

    const v2, 0xda545

    aput v2, v0, v1

    const/16 v1, 0xa7

    const v2, 0x55aaba

    aput v2, v0, v1

    const/16 v1, 0xa8

    const v2, 0x56a4e

    aput v2, v0, v1

    const/16 v1, 0xa9

    const v2, 0xa6d43

    aput v2, v0, v1

    const/16 v1, 0xaa

    const v2, 0x452eb7

    aput v2, v0, v1

    const/16 v1, 0xab

    const v2, 0x52d4b

    aput v2, v0, v1

    const/16 v1, 0xac

    const v2, 0x8a95bf

    aput v2, v0, v1

    const/16 v1, 0xad

    const v2, 0xa9553

    aput v2, v0, v1

    const/16 v1, 0xae

    const v2, 0xb4a47

    aput v2, v0, v1

    const/16 v1, 0xaf

    const v2, 0x6b553b

    aput v2, v0, v1

    const/16 v1, 0xb0

    const v2, 0xad54f

    aput v2, v0, v1

    const/16 v1, 0xb1

    const v2, 0x55a45

    aput v2, v0, v1

    const/16 v1, 0xb2

    const v2, 0x4a5d38

    aput v2, v0, v1

    const/16 v1, 0xb3

    const v2, 0xa5b4c

    aput v2, v0, v1

    const/16 v1, 0xb4

    const v2, 0x52b42

    aput v2, v0, v1

    const/16 v1, 0xb5

    const v2, 0x3a93b6

    aput v2, v0, v1

    const/16 v1, 0xb6

    const v2, 0x69349

    aput v2, v0, v1

    const/16 v1, 0xb7

    const v2, 0x7729bd

    aput v2, v0, v1

    const/16 v1, 0xb8

    const v2, 0x6aa51

    aput v2, v0, v1

    const/16 v1, 0xb9

    const v2, 0xad546

    aput v2, v0, v1

    const/16 v1, 0xba

    const v2, 0x54daba

    aput v2, v0, v1

    const/16 v1, 0xbb

    const v2, 0x4b64e

    aput v2, v0, v1

    const/16 v1, 0xbc

    const v2, 0xa5743

    aput v2, v0, v1

    const/16 v1, 0xbd

    const v2, 0x452738

    aput v2, v0, v1

    const/16 v1, 0xbe

    const v2, 0xd264a

    aput v2, v0, v1

    const/16 v1, 0xbf

    const v2, 0x8e933e

    aput v2, v0, v1

    const/16 v1, 0xc0

    const v2, 0xd5252

    aput v2, v0, v1

    const/16 v1, 0xc1

    const v2, 0xdaa47

    aput v2, v0, v1

    const/16 v1, 0xc2

    const v2, 0x66b53b

    aput v2, v0, v1

    const/16 v1, 0xc3

    const v2, 0x56d4f

    aput v2, v0, v1

    const/16 v1, 0xc4

    const v2, 0x4ae45

    aput v2, v0, v1

    const/16 v1, 0xc5

    const v2, 0x4a4eb9

    aput v2, v0, v1

    const/16 v1, 0xc6

    const v2, 0xa4d4c

    aput v2, v0, v1

    const/16 v1, 0xc7

    const v2, 0xd1541

    aput v2, v0, v1

    const/16 v1, 0xc8

    const v2, 0x2d92b5

    aput v2, v0, v1

    sput-object v0, Lcom/meizu/common/util/LunarCalendar;->LUNAR_INFO:[I

    const-string/jumbo v0, "(19|20)[0-9]{2}-((0)?[1-9]|1[012])-((0)?[1-9]|(1|2)[0-9]|30)$"

    .line 334
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/meizu/common/util/LunarCalendar;->DATE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    return-void
.end method

.method private static daysInLunarMonth(II)I
    .locals 2
    .param p0, "year"    # I
    .param p1, "month"    # I

    .prologue
    .line 309
    sget-object v0, Lcom/meizu/common/util/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 v1, p0, -0x76b

    aget v0, v0, v1

    const/high16 v1, 0x100000

    shr-int/2addr v1, p1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/16 v0, 0x1e

    .line 312
    return v0

    :cond_0
    const/16 v0, 0x1d

    .line 310
    return v0
.end method

.method private static daysInLunarYear(I)I
    .locals 5
    .param p0, "year"    # I

    .prologue
    const/16 v2, 0x15c

    .line 288
    .local v2, "sum":I
    invoke-static {p0}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v3

    if-nez v3, :cond_0

    .line 291
    :goto_0
    sget-object v3, Lcom/meizu/common/util/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 v4, p0, -0x76b

    aget v3, v3, v4

    const v4, 0xfff80

    and-int v1, v3, v4

    .local v1, "monthInfo":I
    const/high16 v0, 0x80000

    .local v0, "i":I
    :goto_1
    const/4 v3, 0x7

    .line 292
    if-gt v0, v3, :cond_1

    .line 296
    return v2

    .end local v0    # "i":I
    .end local v1    # "monthInfo":I
    :cond_0
    const/16 v2, 0x179

    .line 289
    goto :goto_0

    .line 293
    .restart local v0    # "i":I
    .restart local v1    # "monthInfo":I
    :cond_1
    and-int v3, v1, v0

    if-nez v3, :cond_2

    .line 292
    :goto_2
    shr-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 294
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2
.end method

.method public static final daysInMonth(II)I
    .locals 1
    .param p0, "year"    # I
    .param p1, "month"    # I

    .prologue
    .line 243
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/meizu/common/util/LunarCalendar;->daysInMonth(IIZ)I

    move-result v0

    return v0
.end method

.method public static final daysInMonth(IIZ)I
    .locals 3
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "leap"    # Z

    .prologue
    const/4 v2, 0x0

    .line 258
    invoke-static {p0}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v0

    .local v0, "leapMonth":I
    const/4 v1, 0x0

    .line 262
    .local v1, "offset":I
    if-nez v0, :cond_2

    .line 267
    :cond_0
    :goto_0
    if-eqz p2, :cond_3

    .line 271
    if-nez v0, :cond_4

    .line 276
    :cond_1
    return v2

    .line 262
    :cond_2
    if-le p1, v0, :cond_0

    const/4 v1, 0x1

    .line 263
    goto :goto_0

    .line 268
    :cond_3
    add-int v2, p1, v1

    invoke-static {p0, v2}, Lcom/meizu/common/util/LunarCalendar;->daysInLunarMonth(II)I

    move-result v2

    return v2

    .line 271
    :cond_4
    if-ne v0, p1, :cond_1

    .line 272
    add-int/lit8 v2, p1, 0x1

    invoke-static {p0, v2}, Lcom/meizu/common/util/LunarCalendar;->daysInLunarMonth(II)I

    move-result v2

    return v2
.end method

.method public static leapMonth(I)I
    .locals 2
    .param p0, "year"    # I

    .prologue
    .line 323
    sget-object v0, Lcom/meizu/common/util/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 v1, p0, -0x76b

    aget v0, v0, v1

    const/high16 v1, 0xf00000

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x14

    return v0
.end method

.method public static final lunarToSolar(IIIZ)[I
    .locals 11
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "monthDay"    # I
    .param p3, "isLeapMonth"    # Z

    .prologue
    const/high16 v10, 0x80000

    const/4 v7, 0x1

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/16 v5, 0x76b

    .line 89
    if-ge p0, v5, :cond_1

    .line 91
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Illegal lunar date, must be like that:\n\tyear : 1900~2099\n\tmonth : 1~12\n\tday : 1~30\n\terror date:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_1
    const/16 v5, 0x833

    .line 89
    if-gt p0, v5, :cond_0

    if-lt p1, v7, :cond_0

    const/16 v5, 0xc

    if-gt p1, v5, :cond_0

    if-lt p2, v7, :cond_0

    const/16 v5, 0x1e

    if-gt p2, v5, :cond_0

    .line 97
    sget-object v5, Lcom/meizu/common/util/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 v6, p0, -0x76b

    aget v5, v5, v6

    and-int/lit8 v5, v5, 0x1f

    add-int/lit8 v0, v5, -0x1

    .line 99
    .local v0, "dayOffset":I
    sget-object v5, Lcom/meizu/common/util/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 v6, p0, -0x76b

    aget v5, v5, v6

    and-int/lit8 v5, v5, 0x60

    shr-int/lit8 v5, v5, 0x5

    if-eq v5, v9, :cond_5

    :goto_0
    const/4 v1, 0x1

    .line 102
    .local v1, "i":I
    :goto_1
    if-lt v1, p1, :cond_6

    .line 109
    add-int/2addr v0, p2

    .line 110
    sget-object v5, Lcom/meizu/common/util/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 v6, p0, -0x76b

    aget v5, v5, v6

    const/high16 v6, 0xf00000

    and-int/2addr v5, v6

    shr-int/lit8 v3, v5, 0x14

    .line 113
    .local v3, "leapMonth":I
    if-nez v3, :cond_8

    :cond_2
    :goto_2
    const/16 v5, 0x16e

    .line 122
    if-le v0, v5, :cond_c

    .line 123
    :cond_3
    add-int/lit8 p0, p0, 0x1

    .line 124
    rem-int/lit8 v5, p0, 0x4

    if-eq v5, v7, :cond_d

    .line 127
    add-int/lit16 v0, v0, -0x16d

    :cond_4
    :goto_3
    const/4 v5, 0x3

    .line 130
    new-array v4, v5, [I

    .local v4, "solarInfo":[I
    const/4 v1, 0x1

    :goto_4
    const/16 v5, 0xd

    .line 131
    if-lt v1, v5, :cond_e

    .line 162
    :goto_5
    aput p0, v4, v8

    .line 164
    return-object v4

    .line 100
    .end local v1    # "i":I
    .end local v3    # "leapMonth":I
    .end local v4    # "solarInfo":[I
    :cond_5
    add-int/lit8 v0, v0, 0x1f

    goto :goto_0

    .line 103
    .restart local v1    # "i":I
    :cond_6
    sget-object v5, Lcom/meizu/common/util/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 v6, p0, -0x76b

    aget v5, v5, v6

    add-int/lit8 v6, v1, -0x1

    shr-int v6, v10, v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_7

    .line 106
    add-int/lit8 v0, v0, 0x1e

    .line 102
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 104
    :cond_7
    add-int/lit8 v0, v0, 0x1d

    goto :goto_6

    .line 114
    .restart local v3    # "leapMonth":I
    :cond_8
    if-le p1, v3, :cond_a

    .line 115
    :cond_9
    sget-object v5, Lcom/meizu/common/util/LunarCalendar;->LUNAR_INFO:[I

    add-int/lit16 v6, p0, -0x76b

    aget v5, v5, v6

    add-int/lit8 v6, p1, -0x1

    shr-int v6, v10, v6

    and-int/2addr v5, v6

    if-eqz v5, :cond_b

    .line 118
    add-int/lit8 v0, v0, 0x1e

    goto :goto_2

    .line 114
    :cond_a
    if-ne p1, v3, :cond_2

    if-nez p3, :cond_9

    goto :goto_2

    .line 116
    :cond_b
    add-int/lit8 v0, v0, 0x1d

    goto :goto_2

    .line 122
    :cond_c
    rem-int/lit8 v5, p0, 0x4

    if-eqz v5, :cond_4

    const/16 v5, 0x16d

    if-gt v0, v5, :cond_3

    goto :goto_3

    .line 125
    :cond_d
    add-int/lit16 v0, v0, -0x16e

    goto :goto_3

    .line 132
    .restart local v4    # "solarInfo":[I
    :cond_e
    sget-object v5, Lcom/meizu/common/util/LunarCalendar;->DAYS_BEFORE_MONTH:[I

    aget v2, v5, v1

    .line 133
    .local v2, "iPos":I
    rem-int/lit8 v5, p0, 0x4

    if-eqz v5, :cond_11

    .line 137
    :cond_f
    :goto_7
    rem-int/lit8 v5, p0, 0x4

    if-eqz v5, :cond_12

    .line 143
    :cond_10
    if-ge v2, v0, :cond_13

    .line 131
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 133
    :cond_11
    if-le v1, v9, :cond_f

    .line 134
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 137
    :cond_12
    if-ne v1, v9, :cond_10

    add-int/lit8 v5, v2, 0x1

    if-ne v5, v0, :cond_10

    .line 138
    aput v1, v4, v7

    .line 139
    add-int/lit8 v5, v0, -0x1f

    aput v5, v4, v9

    goto :goto_5

    .line 144
    :cond_13
    aput v1, v4, v7

    .line 145
    sget-object v5, Lcom/meizu/common/util/LunarCalendar;->DAYS_BEFORE_MONTH:[I

    add-int/lit8 v6, v1, -0x1

    aget v2, v5, v6

    .line 146
    rem-int/lit8 v5, p0, 0x4

    if-eqz v5, :cond_15

    .line 149
    :cond_14
    :goto_8
    if-gt v0, v2, :cond_16

    .line 151
    if-eq v0, v2, :cond_17

    .line 158
    aput v0, v4, v9

    goto :goto_5

    .line 146
    :cond_15
    if-le v1, v9, :cond_14

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 150
    :cond_16
    sub-int v5, v0, v2

    aput v5, v4, v9

    goto :goto_5

    .line 152
    :cond_17
    rem-int/lit8 v5, p0, 0x4

    if-eqz v5, :cond_19

    .line 155
    :cond_18
    sget-object v5, Lcom/meizu/common/util/LunarCalendar;->DAYS_BEFORE_MONTH:[I

    aget v5, v5, v1

    sget-object v6, Lcom/meizu/common/util/LunarCalendar;->DAYS_BEFORE_MONTH:[I

    add-int/lit8 v7, v1, -0x1

    aget v6, v6, v7

    sub-int/2addr v5, v6

    aput v5, v4, v9

    goto/16 :goto_5

    .line 152
    :cond_19
    if-ne v1, v9, :cond_18

    .line 153
    sget-object v5, Lcom/meizu/common/util/LunarCalendar;->DAYS_BEFORE_MONTH:[I

    aget v5, v5, v1

    sget-object v6, Lcom/meizu/common/util/LunarCalendar;->DAYS_BEFORE_MONTH:[I

    add-int/lit8 v7, v1, -0x1

    aget v6, v6, v7

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x1

    aput v5, v4, v9

    goto/16 :goto_5
.end method

.method public static parseDate(Ljava/lang/String;)[I
    .locals 1
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    .line 359
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/meizu/common/util/LunarCalendar;->parseDate(Ljava/lang/String;Z)[I

    move-result-object v0

    return-object v0
.end method

.method public static parseDate(Ljava/lang/String;Z)[I
    .locals 4
    .param p0, "date"    # Ljava/lang/String;
    .param p1, "lunar"    # Z

    .prologue
    .line 369
    new-instance v0, Lcom/meizu/common/util/LunarCalendar$DateParser;

    invoke-direct {v0, p0}, Lcom/meizu/common/util/LunarCalendar$DateParser;-><init>(Ljava/lang/String;)V

    .line 370
    .local v0, "parser":Lcom/meizu/common/util/LunarCalendar$DateParser;
    if-nez p1, :cond_1

    .line 373
    :cond_0
    invoke-virtual {v0}, Lcom/meizu/common/util/LunarCalendar$DateParser;->getDate()[I

    move-result-object v1

    return-object v1

    .line 370
    :cond_1
    invoke-virtual {v0}, Lcom/meizu/common/util/LunarCalendar$DateParser;->getDate()[I

    move-result-object v1

    const/4 v2, 0x2

    aget v1, v1, v2

    const/16 v2, 0x1f

    if-ne v1, v2, :cond_0

    .line 371
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "\u9519\u8bef\u7684\u519c\u5386\u65e5\u671f\u6570\u636e\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, ", \u519c\u5386\u6ca1\u6709\u4e09\u5341\u4e00"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static parseLunarDate(Ljava/lang/String;)[I
    .locals 1
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    .line 350
    invoke-static {p0}, Lcom/meizu/common/util/LunarCalendar;->parseDate(Ljava/lang/String;)[I

    move-result-object v0

    return-object v0
.end method

.method public static final solarToLunar(III)[I
    .locals 18
    .param p0, "year"    # I
    .param p1, "month"    # I
    .param p2, "monthDay"    # I

    .prologue
    const/4 v14, 0x4

    .line 177
    new-array v10, v14, [I

    .line 179
    .local v10, "lunarDate":[I
    new-instance v2, Ljava/util/GregorianCalendar;

    const/16 v14, 0x76b

    const/4 v15, 0x1

    const/16 v16, 0xa

    move/from16 v0, v16

    invoke-direct {v2, v14, v15, v0}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 180
    .local v2, "baseCalendar":Ljava/util/GregorianCalendar;
    sget-object v14, Lcom/meizu/common/util/LunarCalendar;->TZ_UTC:Ljava/util/TimeZone;

    invoke-virtual {v2, v14}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 181
    new-instance v11, Ljava/util/GregorianCalendar;

    add-int/lit8 v14, p1, -0x1

    move/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v11, v0, v14, v1}, Ljava/util/GregorianCalendar;-><init>(III)V

    .line 182
    .local v11, "objCalendar":Ljava/util/GregorianCalendar;
    sget-object v14, Lcom/meizu/common/util/LunarCalendar;->TZ_UTC:Ljava/util/TimeZone;

    invoke-virtual {v11, v14}, Ljava/util/GregorianCalendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 183
    invoke-virtual {v2}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 184
    .local v3, "baseDate":Ljava/util/Date;
    invoke-virtual {v11}, Ljava/util/GregorianCalendar;->getTime()Ljava/util/Date;

    move-result-object v12

    .line 186
    .local v12, "objDate":Ljava/util/Date;
    invoke-virtual {v12}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v16

    sub-long v14, v14, v16

    const-wide/32 v16, 0x5265c00

    div-long v14, v14, v16

    long-to-int v13, v14

    .local v13, "offset":I
    const/4 v5, 0x0

    .local v5, "daysOfYear":I
    const/16 v7, 0x76b

    .local v7, "iYear":I
    :goto_0
    const/16 v14, 0x833

    .line 191
    if-le v7, v14, :cond_3

    .line 195
    :cond_0
    if-ltz v13, :cond_4

    :goto_1
    const/4 v14, 0x0

    .line 201
    aput v7, v10, v14

    .line 203
    invoke-static {v7}, Lcom/meizu/common/util/LunarCalendar;->leapMonth(I)I

    move-result v9

    .line 204
    .local v9, "leapMonth":I
    const/4 v8, 0x0

    .local v8, "isLeap":Z
    const/4 v4, 0x0

    .local v4, "daysOfMonth":I
    const/4 v6, 0x1

    .local v6, "iMonth":I
    :goto_2
    const/16 v14, 0xd

    .line 207
    if-le v6, v14, :cond_5

    .line 212
    :cond_1
    if-ltz v13, :cond_6

    .line 218
    :goto_3
    if-nez v9, :cond_7

    :cond_2
    :goto_4
    const/4 v14, 0x1

    .line 226
    aput v6, v10, v14

    const/4 v14, 0x2

    .line 227
    add-int/lit8 v15, v13, 0x1

    aput v15, v10, v14

    const/4 v15, 0x3

    .line 228
    if-nez v8, :cond_8

    const/4 v14, 0x0

    :goto_5
    aput v14, v10, v15

    .line 230
    return-object v10

    .line 191
    .end local v4    # "daysOfMonth":I
    .end local v6    # "iMonth":I
    .end local v8    # "isLeap":Z
    .end local v9    # "leapMonth":I
    :cond_3
    if-lez v13, :cond_0

    .line 192
    invoke-static {v7}, Lcom/meizu/common/util/LunarCalendar;->daysInLunarYear(I)I

    move-result v5

    .line 193
    sub-int/2addr v13, v5

    .line 191
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 196
    :cond_4
    add-int/2addr v13, v5

    .line 197
    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    .line 207
    .restart local v4    # "daysOfMonth":I
    .restart local v6    # "iMonth":I
    .restart local v8    # "isLeap":Z
    .restart local v9    # "leapMonth":I
    :cond_5
    if-lez v13, :cond_1

    .line 208
    invoke-static {v7, v6}, Lcom/meizu/common/util/LunarCalendar;->daysInLunarMonth(II)I

    move-result v4

    .line 209
    sub-int/2addr v13, v4

    .line 207
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 213
    :cond_6
    add-int/2addr v13, v4

    .line 214
    add-int/lit8 v6, v6, -0x1

    goto :goto_3

    .line 218
    :cond_7
    if-le v6, v9, :cond_2

    .line 219
    add-int/lit8 v6, v6, -0x1

    .line 221
    if-ne v6, v9, :cond_2

    .line 222
    const/4 v8, 0x1

    goto :goto_4

    :cond_8
    const/4 v14, 0x1

    .line 228
    goto :goto_5
.end method

.method public static final validateDateFormat(Ljava/lang/String;)Z
    .locals 2
    .param p0, "dateString"    # Ljava/lang/String;

    .prologue
    .line 338
    sget-object v1, Lcom/meizu/common/util/LunarCalendar;->DATE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 339
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    return v1
.end method
