# ⚖️ Policies & FAQ

## 1. **Ensuring Consistency Across Platforms**

To maintain a consistent interface across platforms, libhal adopts:

1. Clearly articulated rules and interface API documentation. This ensures every
   potential input produces a predictable behavior.
2. Testing mechanisms that ensure adherence to these standards.

While libhal covers the documentation aspect, our CI integration doesn't yet
encompass all testing facets, simulated or real-world. We are in the process of
designing a compliance test suitable both for device testing and CI inclusion.
Presently, the onus is on manual testing and meticulous inspection.

Regarding unit tests: Although beneficial for purely software libraries, they're
not always feasible for embedded systems. Once you mock components like i2c or
input pins, the actual device testing veers towards simulation. This method is
viable post verifying the device compatibility, solidifying the code behavior
through unit tests. High-level conceptual and application codes can harness such
tests, but unit testing often misaligns with low-level drivers.

## 2. **Driver Development in libhal**

> How are these drivers created? Do new products gain immediate support?

Our developers craft code by hand. Fully automated firmware driver solutions
either fall short on efficiency or fail to span multiple devices. However, for
devices adhering to standards like NMEA or JEDEC, automation holds potential.
We're also considering tools that process SVD files into bit mask ranges,
assuming no licensing complications arise.

## 3. **OEM's Stance on libhal Software**

> Does libhal have defenses against potential vendor objections?

Using OEM-developed SDKs can be tricky due to restrictive licensing. For
instance, SDKs from NXP or STM mandate their code only run on their specific
devices. Some chips might mirror the architecture of another, but licensing can
inhibit cross-utilization.

Our safeguard? Any software we integrate is crafted by our engineers, strictly
based on publicly accessible OEM manuals. We're mindful of potential exceptions
and will handle them case-by-case.

## 4. **Vendor SDK Utilization in libhal**

> How does libhal tackle licensed APIs? What does it mean for the end developer?

Currently, libhal steers clear of SDKs with confining licenses or those
misaligned with Apache 2.0 or its equivalents. This includes licenses from NXP
and STM. However, SDKs from Espressif Systems (with Apache 2.0) are potentially
usable.

## 5. **Dealing with Devices Lacking Public Manuals**

Devices without public user manuals typically don't get a libhal library. Here's
why:

1. It risks unintentional exposure of proprietary device information.
2. Without a manual, the code operates like a black box, turning debugging into
   a reverse-engineering puzzle.

We can craft drivers for such devices, but their source code would remain
confidential. Libhal predominantly focuses on fostering open-source libraries.
